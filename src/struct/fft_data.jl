struct FftData
    real_data_as_bytes::Vector{UInt8}
    imaginary_data_as_bytes::Vector{UInt8}
    FftData(data) = new(data.real_data_as_bytes, data.imaginary_data_as_bytes)
end