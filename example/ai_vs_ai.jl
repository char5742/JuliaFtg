# Distributedにしないと、gPRCの通信がうまく行えなかった。
using Distributed
addprocs(3, exeflags="--project=$(Base.active_project())")

@everywhere include("../src/JuliaFtg.jl")
@everywhere using .JuliaFtg
@everywhere include("KickAI.jl")


@sync begin
# JAVA ゲームサーバーへのクライアント
@spawn run_game("http://localhost:50051/";
    character_1="ZEN", character_2="ZEN",
    player_1="KickAI", player_2="DisplayInfo",
    game_number=1)
end
ai1 = KickAI()
ai2 = KickAI()
# ゲームの実行
@sync begin
    @spawn ai_player("http://localhost:50051/", ai1, true, "KickAI", true)
    @spawn ai_player("http://localhost:50051/", ai2, false, "DisplayInfo", true)
end