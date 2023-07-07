struct ScreenData
    display_bytes::Vector{UInt8}
    ScreenData(data) = new(data.display_bytes)
end