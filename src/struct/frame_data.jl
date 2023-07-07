struct FrameData
    character_data::Vector{Union{Nothing,CharacterData}}
    current_frame_number::Int32
    current_round::Int32
    projectile_data::Vector{AttackData}
    empty_flag::Bool
    front::Vector{Bool}
    FrameData(data) = begin
        if isnothing(data)
            return new(
                [nothing, nothing],
                -1,
                -1,
                [],
                true,
                [false, false],
            )
        else
            return new(
                [CharacterData(chara) for chara in data.character_data],
                data.current_frame_number,
                data.current_round,
                [AttackData(attack_data) for attack_data in data.projectile_data],
                data.empty_flag,
                data.front,
            )
        end

    end
end

