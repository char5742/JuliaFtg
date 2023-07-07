struct AudioData
    raw_data_as_bytes::Vector{UInt8}
    fft_data::Vector{FftData}
    spectrogram_data_as_bytes::Vector{UInt8}
    AudioData(data) = new(
        data.raw_data_as_bytes,
        [FftData(x) for x in data.fft_data], data.spectrogram_data_as_bytes)
end