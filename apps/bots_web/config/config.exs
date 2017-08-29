# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bots_web,
  namespace: BotsWeb,
  ecto_repos: [Bots.Repo]

# Configures the endpoint
config :bots_web, BotsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JQF6Sm71/sDZnGhJ03rpdOiqB7QOK5+dj+4x04jSAQNL8ya215991hYjd6/85UHI",
  render_errors: [view: BotsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BotsWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :bots_web, :generators,
  context_app: :bots

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
