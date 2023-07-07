struct HitArea
    left::Int32
    right::Int32
    top::Int32
    bottom::Int32
    HitArea(area) = new(area.left, area.right, area.top, area.bottom)
end