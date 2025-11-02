defmodule ServHub.Repo do
  use Ecto.Repo,
    otp_app: :serv_hub,
    adapter: Ecto.Adapters.Postgres
end
