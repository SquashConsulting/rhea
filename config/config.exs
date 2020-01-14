# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rhea,
  ecto_repos: [Rhea.Repo]

# Configures the endpoint
config :rhea, RheaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "N9D4NBKDH0XSs9/kfvsxeg1jfQJyDFtAci/n0fy9Zfiu15j+Ew2MNWFk8+0SFdFm",
  render_errors: [view: RheaWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Rhea.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
