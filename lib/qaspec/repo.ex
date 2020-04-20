defmodule Qaspec.Repo do
  use Ecto.Repo,
    otp_app: :qaspec,
    adapter: Ecto.Adapters.Postgres
end
