struct RoundResult
    current_round::Int32
    remaining_hps::Vector{Int32}
    elapsed_frame::Int32
    RoundResult(data) = new(data.current_round, data.remaining_hps, data.elapsed_frame)
end