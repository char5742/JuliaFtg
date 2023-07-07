struct GameData
    max_hps::Vector{Int32}
    max_energies::Vector{Int32}
    character_names::Tuple{String,String}
    ai_names::Tuple{String,String}
    GameData(data) = new(data.max_hps, data.max_energies,
        (data.character_names[1], data.character_names[2]),
        (data.ai_names[1], data.ai_names[2]))
end