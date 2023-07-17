
mutable struct CommandCenter
    skill_keys::Vector{Struct.Key}
    frame_data::Struct.FrameData
    player_number::Bool
    CommandCenter() = new([], Struct.FrameData(nothing), true)
end



function is_front(data::Struct.FrameData, player::Bool)
    data.front[player ? 1 : 2]
end

function get_character(data::Struct.FrameData, player::Bool)
    data.character_data[player ? 1 : 2]
end

function reverse_key(commands::Vector{String})
    buffer = String[]
    for command in commands
        if command == "L" || command == "4"
            push!(buffer, "6")
        elseif command == "R" || command == "6"
            push!(buffer, "4")
        elseif command == "LD" || command == "1"
            push!(buffer, "3")
        elseif command == "LU" || command == "7"
            push!(buffer, "9")
        elseif command == "RD" || command == "3"
            push!(buffer, "1")
        elseif command == "RU" || command == "9"
            push!(buffer, "7")
        else
            push!(buffer, command)
        end
    end
    buffer
end

function create_keys!(command_center::CommandCenter, str::String)
    buf = nothing
    commands = map(String, split(str, " "))
    if !is_front(command_center.frame_data, command_center.player_number)
        commands = reverse_key(commands)
    end

    index = 1
    while index <= length(commands)
        buf = Struct.Key()
        if commands[index] == "L" || commands[index] == "4"
            buf.L = true
        elseif commands[index] == "R" || commands[index] == "6"
            buf.R = true
        elseif commands[index] == "D" || commands[index] == "2"
            buf.D = true
        elseif commands[index] == "U" || commands[index] == "8"
            buf.U = true
        elseif commands[index] == "LD" || commands[index] == "1"
            buf.L = true
            buf.D = true
        elseif commands[index] == "LU" || commands[index] == "7"
            buf.L = true
            buf.U = true
        elseif commands[index] == "RD" || commands[index] == "3"
            buf.R = true
            buf.D = true
        elseif commands[index] == "RU" || commands[index] == "9"
            buf.R = true
            buf.U = true
        end

        if index + 2 < length(commands) && commands[index+1] == "_"
            index += 2
        end
        if commands[index] == "A"
            buf.A = true
        elseif commands[index] == "B"
            buf.B = true
        elseif commands[index] == "C"
            buf.C = true
        end
        push!(command_center.skill_keys, buf)
        index += 1
    end
end

function action_to_command!(command_center::CommandCenter, str::String)
    if str == "FORWARD_WALK"
        create_keys!(command_center, "6")
    elseif str == "DASH"
        create_keys!(command_center, "6 5 6")
    elseif str == "BACK_STEP"
        create_keys!(command_center, "4 5 4")
    elseif str == "CROUCH"
        create_keys!(command_center, "2")
    elseif str == "JUMP"
        create_keys!(command_center, "8")
    elseif str == "F||_JUMP"
        create_keys!(command_center, "9")
    elseif str == "BACK_JUMP"
        create_keys!(command_center, "7")
    elseif str == "STAND_GUARD"
        create_keys!(command_center, "4")
    elseif str == "CROUCH_GUARD"
        create_keys!(command_center, "1")
    elseif str == "AIR_GUARD"
        create_keys!(command_center, "7")
    elseif str == "THROW_A"
        create_keys!(command_center, "4 _ A")
    elseif str == "THROW_B"
        create_keys!(command_center, "4 _ B")
    elseif str == "STAND_A"
        create_keys!(command_center, "A")
    elseif str == "STAND_B"
        create_keys!(command_center, "B")
    elseif str == "CROUCH_A"
        create_keys!(command_center, "2 _ A")
    elseif str == "CROUCH_B"
        create_keys!(command_center, "2 _ B")
    elseif str == "AIR_A"
        create_keys!(command_center, "A")
    elseif str == "AIR_B"
        create_keys!(command_center, "B")
    elseif str == "AIR_DA"
        create_keys!(command_center, "2 _ A")
    elseif str == "AIR_DB"
        create_keys!(command_center, "2 _ B")
    elseif str == "STAND_FA"
        create_keys!(command_center, "6 _ A")
    elseif str == "STAND_FB"
        create_keys!(command_center, "6 _ B")
    elseif str == "CROUCH_FA"
        create_keys!(command_center, "3 _ A")
    elseif str == "CROUCH_FB"
        create_keys!(command_center, "3 _ B")
    elseif str == "AIR_FA"
        create_keys!(command_center, "9 _ A")
    elseif str == "AIR_FB"
        create_keys!(command_center, "9 _ B")
    elseif str == "AIR_UA"
        create_keys!(command_center, "8 _ A")
    elseif str == "AIR_UB"
        create_keys!(command_center, "8 _ B")
    elseif str == "STAND_D_DF_FA"
        create_keys!(command_center, "2 3 6 _ A")
    elseif str == "STAND_D_DF_FB"
        create_keys!(command_center, "2 3 6 _ B")
    elseif str == "STAND_F_D_DFA"
        create_keys!(command_center, "6 2 3 _ A")
    elseif str == "STAND_F_D_DFB"
        create_keys!(command_center, "6 2 3 _ B")
    elseif str == "STAND_D_DB_BA"
        create_keys!(command_center, "2 1 4 _ A")
    elseif str == "STAND_D_DB_BB"
        create_keys!(command_center, "2 1 4 _ B")
    elseif str == "AIR_D_DF_FA"
        create_keys!(command_center, "2 3 6 _ A")
    elseif str == "AIR_D_DF_FB"
        create_keys!(command_center, "2 3 6 _ B")
    elseif str == "AIR_F_D_DFA"
        create_keys!(command_center, "6 2 3 _ A")
    elseif str == "AIR_F_D_DFB"
        create_keys!(command_center, "6 2 3 _ B")
    elseif str == "AIR_D_DB_BA"
        create_keys!(command_center, "2 1 4 _ A")
    elseif str == "AIR_D_DB_BB"
        create_keys!(command_center, "2 1 4 _ B")
    elseif str == "STAND_D_DF_FC"
        create_keys!(command_center, "2 3 6 _ C")
    else
        create_keys!(command_center, str)
    end
end


function command_call!(command_center::CommandCenter, str::String)
    if isempty(command_center.skill_keys)
        action_to_command!(command_center, str)
    end
end


function set_frame_data!(command_center::CommandCenter, frame_data::FrameData, player_number::Bool)
    command_center.frame_data = frame_data
    command_center.player_number = player_number
end

function get_skill_flag(command_center::CommandCenter)
    return length(command_center.skill_keys) > 0
end

function get_skill_key(command_center::CommandCenter)
    if get_skill_flag(command_center)
        pop!(command_center.skill_keys)
    else
        Key()
    end
end

function skill_cancel!(command_center::CommandCenter)
    command_center.skill_keys = []
end

