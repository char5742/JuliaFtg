function run_game(url::String, ;
    character_1::String, character_2::String,
    player_1::String, player_2::String,
    game_number::Int64
)
    client = ServiceBlockingClient(url)
    request = RunGameRequest(;
        character_1=character_1, character_2=character_2,
        player_1=player_1, player_2=player_2,
        game_number=game_number
    )
    RunGame(client, request)
end