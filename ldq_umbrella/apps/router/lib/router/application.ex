defmodule Router.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Router.Telemetry,
      # Start a worker by calling: Router.Worker.start_link(arg)
      # {Router.Worker, arg},
      # Start to serve requests, typically the last entry
      Router.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Router.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Router.Endpoint.config_change(changed, removed)
    :ok
  end
end
