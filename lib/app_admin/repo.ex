defmodule AppAdmin.Repo do
  use Ecto.Repo,
    otp_app: :app_admin,
    adapter: Ecto.Adapters.Postgres
end
