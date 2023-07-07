"""
AIプレイヤーの実装  
player_number: player1 -> 1, player2 -> 0
              
"""
function ai_player(url::String, ai::AIInterface, player_number::Bool, player_name::String, is_blind::Bool)
    try
        client = ServiceBlockingClient(url)
        request = InitializeRequest(; player_number=player_number, player_name=player_name, is_blind=is_blind)
        response, t = Initialize(client, request)
        @show fetch(t)
        player_uuid = response.player_uuid
        request = ParticipateRequest(; player_uuid=player_uuid)
        stream, t = Participate(client, request)
        @show stream
        for state in stream
            proccess_state(client, state, ai, player_number, player_uuid)
        end
        @show fetch(t)
    catch e
        @error e
    end
end

function proccess_state(client::ServiceBlockingClient, state, ai::T, player_number::Bool, player_uuid::String) where {T<:AIInterface}
    flag = Struct.FlagEnum(state.state_flag)
    flag == Struct.Flag.INITIALIZE && initialize(state, ai, player_number)
    flag == Struct.Flag.PROCESSING && processing(client, state, ai, player_uuid)
    flag == Struct.Flag.ROUND_END && round_end(state, ai)
    flag == Struct.Flag.GAME_END && game_end(state, ai)
end

function initialize(state, ai::T, player_number) where {T<:AIInterface}
    initialize!(ai, Struct.GameData(state.game_data), player_number)
end

function processing(client::ServiceBlockingClient, state, ai::T, player_uuid) where {T<:AIInterface}
    get_information!(ai,
        Struct.FrameData(state.frame_data),
        state.is_control,
        hasproperty(state, :non_delay_frame_data) ? Struct.FrameData(state.non_delay_frame_data) : nothing
    )

    hasproperty(state, :screen_data) && get_screen_data!(ai, Struct.ScreenData(state.screen_data))
    hasproperty(state, :audio_data) && get_audio_data!(ai, Struct.AudioData(state.audio_data))

    processing!(ai)
    key = input(ai)
    _, t = Input(client, PlayerInput(; player_uuid=player_uuid, input_key=convert_key(key)))
    fetch(t)
end

function round_end(state, ai::T) where {T<:AIInterface}
    round_end!(ai, Struct.RoundResult(state.round_result))
end

function game_end(state, ai::T) where {T<:AIInterface}
    round_end!(ai, Struct.RoundResult(state.round_result))
    game_end!(ai)
end

function convert_key(key::Key)
    ServiceClients.service.GrpcKey(; A=key.A, B=key.B, C=key.C, U=key.U, D=key.D, L=key.L, R=key.R)
end