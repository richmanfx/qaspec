# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :qaspec,
  ecto_repos: [Qaspec.Repo]

# Configures the endpoint
config :qaspec, QaspecWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TTh2PBM4mqW36VQlLlYkSbc+bLnPIBy9s9m/4Bn+YdRQhuUbsgHJsyvHEJH4zKEc",
  render_errors: [view: QaspecWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Qaspec.PubSub,
  live_view: [signing_salt: "bXcxmYE0"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
