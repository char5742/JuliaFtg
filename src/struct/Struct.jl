module Struct
include("enumerate/Enumerate.jl")
include("key.jl")
include("hit_area.jl")
include("attack_data.jl")
include("fft_data.jl")
include("character_data.jl")
include("game_data.jl")
include("screen_data.jl")
include("round_result.jl")
include("frame_data.jl")
include("audio_data.jl")
export AudioData, FrameData, RoundResult, ScreenData, GameData, CharacterData, AttackData, HitArea, Key
end