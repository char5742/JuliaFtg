abstract type AIInterface end

struct NullAI <: AIInterface end

name(ai::NullAI) = error("Not implemented")
is_blind(ai::NullAI) = error("Not implemented")
initialize!(ai::NullAI, game_data::Struct.GameData, player_number::Bool) = error("Not implemented")
get_information!(ai::NullAI, frame_data::Struct.FrameData, is_control::Bool, non_delay_frame_data::Union{Nothing,Struct.FrameData}) = error("Not implemented")
get_screen_data!(ai::NullAI, screen_data::Struct.ScreenData) = error("Not implemented")
get_audio_data!(ai::NullAI, audio_data::Struct.AudioData) = error("Not implemented")
processing!(ai::NullAI) = error("Not implemented")
input(ai::NullAI) = error("Not implemented")
round_end!(ai::NullAI, round_result::Struct.RoundResult) = error("Not implemented")
game_end!(ai::NullAI) = error("Not implemented")