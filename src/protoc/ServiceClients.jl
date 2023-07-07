module ServiceClients
using gRPCClient

include("service.jl")
using .service

import Base: show

# begin service: service.Service

export ServiceBlockingClient, ServiceClient

struct ServiceBlockingClient
    controller::gRPCController
    channel::gRPCChannel
    stub::ServiceBlockingStub

    function ServiceBlockingClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = ServiceBlockingStub(channel)
        new(controller, channel, stub)
    end
end

struct ServiceClient
    controller::gRPCController
    channel::gRPCChannel
    stub::ServiceStub

    function ServiceClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = ServiceStub(channel)
        new(controller, channel, stub)
    end
end

show(io::IO, client::ServiceBlockingClient) = print(io, "ServiceBlockingClient(", client.channel.baseurl, ")")
show(io::IO, client::ServiceClient) = print(io, "ServiceClient(", client.channel.baseurl, ")")

import .service: RunGame
"""
    RunGame

- input: service.RunGameRequest
- output: google.protobuf.Empty
"""
RunGame(client::ServiceBlockingClient, inp::service.RunGameRequest) = RunGame(client.stub, client.controller, inp)
RunGame(client::ServiceClient, inp::service.RunGameRequest, done::Function) = RunGame(client.stub, client.controller, inp, done)

import .service: Spectate
"""
    Spectate

- input: service.SpectateRequest
- output: Channel{service.SpectatorGameState}
"""
Spectate(client::ServiceBlockingClient, inp::service.SpectateRequest) = Spectate(client.stub, client.controller, inp)
Spectate(client::ServiceClient, inp::service.SpectateRequest, done::Function) = Spectate(client.stub, client.controller, inp, done)

import .service: Initialize
"""
    Initialize

- input: service.InitializeRequest
- output: service.InitializeResponse
"""
Initialize(client::ServiceBlockingClient, inp::service.InitializeRequest) = Initialize(client.stub, client.controller, inp)
Initialize(client::ServiceClient, inp::service.InitializeRequest, done::Function) = Initialize(client.stub, client.controller, inp, done)

import .service: Participate
"""
    Participate

- input: service.ParticipateRequest
- output: Channel{service.PlayerGameState}
"""
Participate(client::ServiceBlockingClient, inp::service.ParticipateRequest) = Participate(client.stub, client.controller, inp)
Participate(client::ServiceClient, inp::service.ParticipateRequest, done::Function) = Participate(client.stub, client.controller, inp, done)

import .service: Input
"""
    Input

- input: service.PlayerInput
- output: google.protobuf.Empty
"""
Input(client::ServiceBlockingClient, inp::service.PlayerInput) = Input(client.stub, client.controller, inp)
Input(client::ServiceClient, inp::service.PlayerInput, done::Function) = Input(client.stub, client.controller, inp, done)

# end service: service.Service

end # module ServiceClients
