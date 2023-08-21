# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ProtoBuf.google.protobuf

mutable struct RunGameRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RunGameRequest(; kwargs...)
        obj = new(meta(RunGameRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RunGameRequest
const __meta_RunGameRequest = Ref{ProtoMeta}()
function meta(::Type{RunGameRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RunGameRequest)
            __meta_RunGameRequest[] = target = ProtoMeta(RunGameRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:character_1 => AbstractString, :character_2 => AbstractString, :player_1 => AbstractString, :player_2 => AbstractString, :game_number => Int32]
            meta(target, RunGameRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RunGameRequest[]
    end
end
function Base.getproperty(obj::RunGameRequest, name::Symbol)
    if name === :character_1
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :character_2
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :player_1
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :player_2
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :game_number
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct SpectateRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SpectateRequest(; kwargs...)
        obj = new(meta(SpectateRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SpectateRequest
const __meta_SpectateRequest = Ref{ProtoMeta}()
function meta(::Type{SpectateRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SpectateRequest)
            __meta_SpectateRequest[] = target = ProtoMeta(SpectateRequest)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, SpectateRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SpectateRequest[]
    end
end

mutable struct SpectatorGameState <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SpectatorGameState(; kwargs...)
        obj = new(meta(SpectatorGameState), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SpectatorGameState
const __meta_SpectatorGameState = Ref{ProtoMeta}()
function meta(::Type{SpectatorGameState})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SpectatorGameState)
            __meta_SpectatorGameState[] = target = ProtoMeta(SpectatorGameState)
            allflds = Pair{Symbol,Union{Type,String}}[:state_flag => Int32, :frame_data => GrpcFrameData, :screen_data => GrpcScreenData, :audio_data => GrpcAudioData, :round_result => GrpcRoundResult]
            meta(target, SpectatorGameState, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SpectatorGameState[]
    end
end
function Base.getproperty(obj::SpectatorGameState, name::Symbol)
    if name === :state_flag
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :frame_data
        return (obj.__protobuf_jl_internal_values[name])::GrpcFrameData
    elseif name === :screen_data
        return (obj.__protobuf_jl_internal_values[name])::GrpcScreenData
    elseif name === :audio_data
        return (obj.__protobuf_jl_internal_values[name])::GrpcAudioData
    elseif name === :round_result
        return (obj.__protobuf_jl_internal_values[name])::GrpcRoundResult
    else
        getfield(obj, name)
    end
end

mutable struct InitializeRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InitializeRequest(; kwargs...)
        obj = new(meta(InitializeRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InitializeRequest
const __meta_InitializeRequest = Ref{ProtoMeta}()
function meta(::Type{InitializeRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InitializeRequest)
            __meta_InitializeRequest[] = target = ProtoMeta(InitializeRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:player_number => Bool, :player_name => AbstractString, :is_blind => Bool]
            meta(target, InitializeRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InitializeRequest[]
    end
end
function Base.getproperty(obj::InitializeRequest, name::Symbol)
    if name === :player_number
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :player_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :is_blind
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct InitializeResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InitializeResponse(; kwargs...)
        obj = new(meta(InitializeResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InitializeResponse
const __meta_InitializeResponse = Ref{ProtoMeta}()
function meta(::Type{InitializeResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InitializeResponse)
            __meta_InitializeResponse[] = target = ProtoMeta(InitializeResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:player_uuid => AbstractString]
            meta(target, InitializeResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InitializeResponse[]
    end
end
function Base.getproperty(obj::InitializeResponse, name::Symbol)
    if name === :player_uuid
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ParticipateRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ParticipateRequest(; kwargs...)
        obj = new(meta(ParticipateRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ParticipateRequest
const __meta_ParticipateRequest = Ref{ProtoMeta}()
function meta(::Type{ParticipateRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ParticipateRequest)
            __meta_ParticipateRequest[] = target = ProtoMeta(ParticipateRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:player_uuid => AbstractString]
            meta(target, ParticipateRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ParticipateRequest[]
    end
end
function Base.getproperty(obj::ParticipateRequest, name::Symbol)
    if name === :player_uuid
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct PlayerGameState <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PlayerGameState(; kwargs...)
        obj = new(meta(PlayerGameState), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PlayerGameState
const __meta_PlayerGameState = Ref{ProtoMeta}()
function meta(::Type{PlayerGameState})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PlayerGameState)
            __meta_PlayerGameState[] = target = ProtoMeta(PlayerGameState)
            allflds = Pair{Symbol,Union{Type,String}}[:state_flag => Int32, :is_control => Bool, :frame_data => GrpcFrameData, :non_delay_frame_data => GrpcFrameData, :screen_data => GrpcScreenData, :audio_data => GrpcAudioData, :game_data => GrpcGameData, :round_result => GrpcRoundResult]
            meta(target, PlayerGameState, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PlayerGameState[]
    end
end
function Base.getproperty(obj::PlayerGameState, name::Symbol)
    if name === :state_flag
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :is_control
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :frame_data
        return (obj.__protobuf_jl_internal_values[name])::GrpcFrameData
    elseif name === :non_delay_frame_data
        return (obj.__protobuf_jl_internal_values[name])::GrpcFrameData
    elseif name === :screen_data
        return (obj.__protobuf_jl_internal_values[name])::GrpcScreenData
    elseif name === :audio_data
        return (obj.__protobuf_jl_internal_values[name])::GrpcAudioData
    elseif name === :game_data
        return (obj.__protobuf_jl_internal_values[name])::GrpcGameData
    elseif name === :round_result
        return (obj.__protobuf_jl_internal_values[name])::GrpcRoundResult
    else
        getfield(obj, name)
    end
end

mutable struct PlayerInput <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PlayerInput(; kwargs...)
        obj = new(meta(PlayerInput), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PlayerInput
const __meta_PlayerInput = Ref{ProtoMeta}()
function meta(::Type{PlayerInput})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PlayerInput)
            __meta_PlayerInput[] = target = ProtoMeta(PlayerInput)
            allflds = Pair{Symbol,Union{Type,String}}[:player_uuid => AbstractString, :input_key => GrpcKey]
            meta(target, PlayerInput, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PlayerInput[]
    end
end
function Base.getproperty(obj::PlayerInput, name::Symbol)
    if name === :player_uuid
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :input_key
        return (obj.__protobuf_jl_internal_values[name])::GrpcKey
    else
        getfield(obj, name)
    end
end

mutable struct StartRoundRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StartRoundRequest(; kwargs...)
        obj = new(meta(StartRoundRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StartRoundRequest
const __meta_StartRoundRequest = Ref{ProtoMeta}()
function meta(::Type{StartRoundRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StartRoundRequest)
            __meta_StartRoundRequest[] = target = ProtoMeta(StartRoundRequest)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, StartRoundRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StartRoundRequest[]
    end
end

# service methods for Service
const _Service_methods = MethodDescriptor[
        MethodDescriptor("RunGame", 1, RunGameRequest, ProtoBuf.google.protobuf.Empty),
        MethodDescriptor("Spectate", 2, SpectateRequest, Channel{SpectatorGameState}),
        MethodDescriptor("Initialize", 3, InitializeRequest, InitializeResponse),
        MethodDescriptor("Participate", 4, ParticipateRequest, Channel{PlayerGameState}),
        MethodDescriptor("Input", 5, PlayerInput, ProtoBuf.google.protobuf.Empty),
        MethodDescriptor("StartRound", 6, StartRoundRequest, ProtoBuf.google.protobuf.Empty)
    ] # const _Service_methods
const _Service_desc = ServiceDescriptor("service.Service", 1, _Service_methods)

Service(impl::Module) = ProtoService(_Service_desc, impl)

mutable struct ServiceStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    ServiceStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_Service_desc, channel))
end # mutable struct ServiceStub

mutable struct ServiceBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    ServiceBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_Service_desc, channel))
end # mutable struct ServiceBlockingStub

RunGame(stub::ServiceStub, controller::ProtoRpcController, inp::RunGameRequest, done::Function) = call_method(stub.impl, _Service_methods[1], controller, inp, done)
RunGame(stub::ServiceBlockingStub, controller::ProtoRpcController, inp::RunGameRequest) = call_method(stub.impl, _Service_methods[1], controller, inp)

Spectate(stub::ServiceStub, controller::ProtoRpcController, inp::SpectateRequest, done::Function) = call_method(stub.impl, _Service_methods[2], controller, inp, done)
Spectate(stub::ServiceBlockingStub, controller::ProtoRpcController, inp::SpectateRequest) = call_method(stub.impl, _Service_methods[2], controller, inp)

Initialize(stub::ServiceStub, controller::ProtoRpcController, inp::InitializeRequest, done::Function) = call_method(stub.impl, _Service_methods[3], controller, inp, done)
Initialize(stub::ServiceBlockingStub, controller::ProtoRpcController, inp::InitializeRequest) = call_method(stub.impl, _Service_methods[3], controller, inp)

Participate(stub::ServiceStub, controller::ProtoRpcController, inp::ParticipateRequest, done::Function) = call_method(stub.impl, _Service_methods[4], controller, inp, done)
Participate(stub::ServiceBlockingStub, controller::ProtoRpcController, inp::ParticipateRequest) = call_method(stub.impl, _Service_methods[4], controller, inp)

Input(stub::ServiceStub, controller::ProtoRpcController, inp::PlayerInput, done::Function) = call_method(stub.impl, _Service_methods[5], controller, inp, done)
Input(stub::ServiceBlockingStub, controller::ProtoRpcController, inp::PlayerInput) = call_method(stub.impl, _Service_methods[5], controller, inp)

StartRound(stub::ServiceStub, controller::ProtoRpcController, inp::StartRoundRequest, done::Function) = call_method(stub.impl, _Service_methods[6], controller, inp, done)
StartRound(stub::ServiceBlockingStub, controller::ProtoRpcController, inp::StartRoundRequest) = call_method(stub.impl, _Service_methods[6], controller, inp)

export RunGameRequest, SpectateRequest, SpectatorGameState, InitializeRequest, InitializeResponse, ParticipateRequest, PlayerGameState, PlayerInput, StartRoundRequest, Service, ServiceStub, ServiceBlockingStub, RunGame, Spectate, Initialize, Participate, Input, StartRound
