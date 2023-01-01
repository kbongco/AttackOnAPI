defmodule AttackonApi.Repo do
  use Ecto.Repo,
    otp_app: :attackon_api,
    adapter: Ecto.Adapters.Postgres
end
