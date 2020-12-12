defmodule Shadowfalls.Repo do
  use Ecto.Repo,
    otp_app: :shadowfalls,
    adapter: Ecto.Adapters.Postgres
end
