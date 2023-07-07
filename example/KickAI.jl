mutable struct KickAI <: AIInterface
    blind_flag::Bool
    cc::CommandCenter
    key::Struct.Key
    player_number::Bool
    frame_data::Union{Nothing,Struct.FrameData}
    screen_data::Union{Nothing,Struct.ScreenData}
    audio_data::Union{Nothing,Struct.AudioData}
    KickAI() = new(true, CommandCenter(), Struct.Key(), true, nothing, nothing, nothing)
end


function JuliaFtg.name(ai::KickAI)
    string(typeof(ai))
end


function JuliaFtg.is_blind(ai::KickAI)
    return ai.blind_flag
end

function JuliaFtg.initialize!(ai::KickAI, game_data::Struct.GameData, player_number::Bool)
    ai.cc = CommandCenter()
    ai.key = Struct.Key()
    ai.player_number = player_number
end

function JuliaFtg.input(ai::KickAI)
    ai.key
end

function JuliaFtg.get_information!(ai::KickAI, frame_data::Struct.FrameData, is_control::Bool, non_delay_frame_data::Union{Nothing,Struct.FrameData})
    ai.frame_data = frame_data
    set_frame_data!(ai.cc, frame_data, ai.player_number)
end

function JuliaFtg.get_screen_data!(ai::KickAI, screen_data::Struct.ScreenData)
    ai.screen_data = screen_data
end

function JuliaFtg.get_audio_data!(ai::KickAI, audio_data::Struct.AudioData)
    ai.audio_data = audio_data
end

function JuliaFtg.processing!(ai::KickAI)
    if ai.frame_data.empty_flag || ai.frame_data.current_frame_number <= 0
        return
    end
    if get_skill_flag(ai.cc)
        ai.key = get_skill_key(ai.cc)
        
    else
        ai.key = Struct.Key()
        skill_cancel!(ai.cc)
        command_call!(ai.cc, "B")
    end
end

function JuliaFtg.round_end!(ai::KickAI, round_result::Struct.RoundResult)
    print(round_result.remaining_hps[1])
    print(round_result.remaining_hps[2])
    print(round_result.elapsed_frame)
end

function JuliaFtg.game_end!(ai::KickAI)
    print("Game End")
end