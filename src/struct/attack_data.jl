struct AttackData
    setting_hit_area::HitArea
    setting_speed_x::Int32
    setting_speed_y::Int32
    current_hit_area::HitArea
    current_frame::Int32
    player_number::Bool
    speed_x::Int32
    speed_y::Int32
    start_up::Int32
    active::Int32
    hit_damage::Int32
    guard_damage::Int32
    start_add_energy::Int32
    hit_add_energy::Int32
    guard_add_energy::Int32
    give_energy::Int32
    impact_x::Int32
    impact_y::Int32
    give_guard_recov::Int32
    attack_type::Int32
    down_prop::Bool
    is_projectile::Bool
    AttackData(data) = new(HitArea(data.setting_hit_area), data.setting_speed_x, data.setting_speed_y, HitArea(data.current_hit_area), data.current_frame, data.player_number, data.speed_x, data.speed_y, data.start_up, data.active, data.hit_damage, data.guard_damage, data.start_add_energy, data.hit_add_energy, data.guard_add_energy, data.give_energy, data.impact_x, data.impact_y, data.give_guard_recov, data.attack_type, data.down_prop, data.is_projectile)
end