# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :attackon_api,
  ecto_repos: [AttackonApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :attackon_api, AttackonApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "efCkEp91ibpXfw0gWO+N4+EveyFsRJr1pupMVWY3KP/KXb5HjUcM06PT92dQoeIa",
  render_errors: [view: AttackonApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: AttackonApi.PubSub,
  live_view: [signing_salt: "uT28FpUh"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
