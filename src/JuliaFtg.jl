module JuliaFtg
include("struct/Struct.jl")
using .Struct
export Struct
include("protoc/ServiceClients.jl")
using .ServiceClients
import .ServiceClients: InitializeRequest, Initialize,
    ParticipateRequest, Participate,
    PlayerInput, Input,
    RunGameRequest, RunGame,
    SpectateRequest, Spectate
include("command_center.jl")
export CommandCenter, get_skill_flag, get_skill_key, skill_cancel!, command_call!, set_frame_data!
include("ai_interface.jl")
export AIInterface
include("ai_player.jl")
export ai_player
include("run_game.jl")
export run_game
end # module JuliaFtg
