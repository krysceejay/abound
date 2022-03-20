defmodule Abound.Repo do
  use Ecto.Repo,
    otp_app: :abound,
    adapter: Ecto.Adapters.Postgres
end
