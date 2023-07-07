# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct GrpcHitArea <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GrpcHitArea(; kwargs...)
        obj = new(meta(GrpcHitArea), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct GrpcHitArea
const __meta_GrpcHitArea = Ref{ProtoMeta}()
function meta(::Type{GrpcHitArea})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GrpcHitArea)
            __meta_GrpcHitArea[] = target = ProtoMeta(GrpcHitArea)
            allflds = Pair{Symbol,Union{Type,String}}[:left => Int32, :right => Int32, :top => Int32, :bottom => Int32]
            meta(target, GrpcHitArea, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GrpcHitArea[]
    end
end
function Base.getproperty(obj::GrpcHitArea, name::Symbol)
    if name === :left
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :right
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :top
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :bottom
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct GrpcAttackData <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GrpcAttackData(; kwargs...)
        obj = new(meta(GrpcAttackData), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct GrpcAttackData
const __meta_GrpcAttackData = Ref{ProtoMeta}()
function meta(::Type{GrpcAttackData})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GrpcAttackData)
            __meta_GrpcAttackData[] = target = ProtoMeta(GrpcAttackData)
            allflds = Pair{Symbol,Union{Type,String}}[:setting_hit_area => GrpcHitArea, :setting_speed_x => Int32, :setting_speed_y => Int32, :current_hit_area => GrpcHitArea, :current_frame => Int32, :player_number => Bool, :speed_x => Int32, :speed_y => Int32, :start_up => Int32, :active => Int32, :hit_damage => Int32, :guard_damage => Int32, :start_add_energy => Int32, :hit_add_energy => Int32, :guard_add_energy => Int32, :give_energy => Int32, :impact_x => Int32, :impact_y => Int32, :give_guard_recov => Int32, :attack_type => Int32, :down_prop => Bool, :is_projectile => Bool]
            meta(target, GrpcAttackData, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GrpcAttackData[]
    end
end
function Base.getproperty(obj::GrpcAttackData, name::Symbol)
    if name === :setting_hit_area
        return (obj.__protobuf_jl_internal_values[name])::GrpcHitArea
    elseif name === :setting_speed_x
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :setting_speed_y
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :current_hit_area
        return (obj.__protobuf_jl_internal_values[name])::GrpcHitArea
    elseif name === :current_frame
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :player_number
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :speed_x
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :speed_y
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :start_up
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :active
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :hit_damage
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :guard_damage
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :start_add_energy
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :hit_add_energy
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :guard_add_energy
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :give_energy
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :impact_x
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :impact_y
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :give_guard_recov
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :attack_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :down_prop
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :is_projectile
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct GrpcCharacterData <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GrpcCharacterData(; kwargs...)
        obj = new(meta(GrpcCharacterData), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct GrpcCharacterData
const __meta_GrpcCharacterData = Ref{ProtoMeta}()
function meta(::Type{GrpcCharacterData})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GrpcCharacterData)
            __meta_GrpcCharacterData[] = target = ProtoMeta(GrpcCharacterData)
            allflds = Pair{Symbol,Union{Type,String}}[:player_number => Bool, :hp => Int32, :energy => Int32, :x => Int32, :y => Int32, :left => Int32, :right => Int32, :top => Int32, :bottom => Int32, :speed_x => Int32, :speed_y => Int32, :state => Int32, :action => Int32, :front => Bool, :control => Bool, :attack_data => GrpcAttackData, :remaining_frame => Int32, :hit_confirm => Bool, :graphic_size_x => Int32, :graphic_size_y => Int32, :graphic_adjust_x => Int32, :hit_count => Int32, :last_hit_frame => Int32]
            meta(target, GrpcCharacterData, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GrpcCharacterData[]
    end
end
function Base.getproperty(obj::GrpcCharacterData, name::Symbol)
    if name === :player_number
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :hp
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :energy
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :x
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :y
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :left
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :right
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :top
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :bottom
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :speed_x
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :speed_y
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :state
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :action
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :front
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :control
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :attack_data
        return (obj.__protobuf_jl_internal_values[name])::GrpcAttackData
    elseif name === :remaining_frame
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :hit_confirm
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :graphic_size_x
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :graphic_size_y
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :graphic_adjust_x
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :hit_count
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :last_hit_frame
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct GrpcFrameData <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GrpcFrameData(; kwargs...)
        obj = new(meta(GrpcFrameData), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct GrpcFrameData
const __meta_GrpcFrameData = Ref{ProtoMeta}()
function meta(::Type{GrpcFrameData})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GrpcFrameData)
            __meta_GrpcFrameData[] = target = ProtoMeta(GrpcFrameData)
            pack = Symbol[:front]
            allflds = Pair{Symbol,Union{Type,String}}[:character_data => Base.Vector{GrpcCharacterData}, :current_frame_number => Int32, :current_round => Int32, :projectile_data => Base.Vector{GrpcAttackData}, :empty_flag => Bool, :front => Base.Vector{Bool}]
            meta(target, GrpcFrameData, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GrpcFrameData[]
    end
end
function Base.getproperty(obj::GrpcFrameData, name::Symbol)
    if name === :character_data
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{GrpcCharacterData}
    elseif name === :current_frame_number
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :current_round
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :projectile_data
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{GrpcAttackData}
    elseif name === :empty_flag
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :front
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Bool}
    else
        getfield(obj, name)
    end
end

mutable struct GrpcFftData <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GrpcFftData(; kwargs...)
        obj = new(meta(GrpcFftData), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct GrpcFftData
const __meta_GrpcFftData = Ref{ProtoMeta}()
function meta(::Type{GrpcFftData})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GrpcFftData)
            __meta_GrpcFftData[] = target = ProtoMeta(GrpcFftData)
            allflds = Pair{Symbol,Union{Type,String}}[:real_data_as_bytes => Vector{UInt8}, :imaginary_data_as_bytes => Vector{UInt8}]
            meta(target, GrpcFftData, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GrpcFftData[]
    end
end
function Base.getproperty(obj::GrpcFftData, name::Symbol)
    if name === :real_data_as_bytes
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :imaginary_data_as_bytes
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct GrpcScreenData <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GrpcScreenData(; kwargs...)
        obj = new(meta(GrpcScreenData), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct GrpcScreenData
const __meta_GrpcScreenData = Ref{ProtoMeta}()
function meta(::Type{GrpcScreenData})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GrpcScreenData)
            __meta_GrpcScreenData[] = target = ProtoMeta(GrpcScreenData)
            allflds = Pair{Symbol,Union{Type,String}}[:display_bytes => Vector{UInt8}]
            meta(target, GrpcScreenData, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GrpcScreenData[]
    end
end
function Base.getproperty(obj::GrpcScreenData, name::Symbol)
    if name === :display_bytes
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct GrpcAudioData <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GrpcAudioData(; kwargs...)
        obj = new(meta(GrpcAudioData), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct GrpcAudioData
const __meta_GrpcAudioData = Ref{ProtoMeta}()
function meta(::Type{GrpcAudioData})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GrpcAudioData)
            __meta_GrpcAudioData[] = target = ProtoMeta(GrpcAudioData)
            allflds = Pair{Symbol,Union{Type,String}}[:raw_data_as_bytes => Vector{UInt8}, :fft_data => Base.Vector{GrpcFftData}, :spectrogram_data_as_bytes => Vector{UInt8}]
            meta(target, GrpcAudioData, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GrpcAudioData[]
    end
end
function Base.getproperty(obj::GrpcAudioData, name::Symbol)
    if name === :raw_data_as_bytes
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :fft_data
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{GrpcFftData}
    elseif name === :spectrogram_data_as_bytes
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct GrpcGameData <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GrpcGameData(; kwargs...)
        obj = new(meta(GrpcGameData), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct GrpcGameData
const __meta_GrpcGameData = Ref{ProtoMeta}()
function meta(::Type{GrpcGameData})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GrpcGameData)
            __meta_GrpcGameData[] = target = ProtoMeta(GrpcGameData)
            pack = Symbol[:max_hps,:max_energies]
            allflds = Pair{Symbol,Union{Type,String}}[:max_hps => Base.Vector{Int32}, :max_energies => Base.Vector{Int32}, :character_names => Base.Vector{AbstractString}, :ai_names => Base.Vector{AbstractString}]
            meta(target, GrpcGameData, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GrpcGameData[]
    end
end
function Base.getproperty(obj::GrpcGameData, name::Symbol)
    if name === :max_hps
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    elseif name === :max_energies
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    elseif name === :character_names
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :ai_names
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct GrpcRoundResult <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GrpcRoundResult(; kwargs...)
        obj = new(meta(GrpcRoundResult), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct GrpcRoundResult
const __meta_GrpcRoundResult = Ref{ProtoMeta}()
function meta(::Type{GrpcRoundResult})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GrpcRoundResult)
            __meta_GrpcRoundResult[] = target = ProtoMeta(GrpcRoundResult)
            pack = Symbol[:remaining_hps]
            allflds = Pair{Symbol,Union{Type,String}}[:current_round => Int32, :remaining_hps => Base.Vector{Int32}, :elapsed_frame => Int32]
            meta(target, GrpcRoundResult, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GrpcRoundResult[]
    end
end
function Base.getproperty(obj::GrpcRoundResult, name::Symbol)
    if name === :current_round
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :remaining_hps
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    elseif name === :elapsed_frame
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct GrpcKey <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GrpcKey(; kwargs...)
        obj = new(meta(GrpcKey), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct GrpcKey
const __meta_GrpcKey = Ref{ProtoMeta}()
function meta(::Type{GrpcKey})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GrpcKey)
            __meta_GrpcKey[] = target = ProtoMeta(GrpcKey)
            allflds = Pair{Symbol,Union{Type,String}}[:A => Bool, :B => Bool, :C => Bool, :U => Bool, :R => Bool, :D => Bool, :L => Bool]
            meta(target, GrpcKey, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GrpcKey[]
    end
end
function Base.getproperty(obj::GrpcKey, name::Symbol)
    if name === :A
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :B
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :C
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :U
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :R
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :D
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :L
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

export GrpcHitArea, GrpcAttackData, GrpcCharacterData, GrpcFrameData, GrpcFftData, GrpcScreenData, GrpcAudioData, GrpcGameData, GrpcRoundResult, GrpcKey
