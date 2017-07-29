# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :false_trades,
  ecto_repos: [FalseTrades.Repo]

# Configures the endpoint
config :false_trades, FalseTradesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2gz72KCZqBJi38BQWozEvpFnJNq4sqkYRrM5cMPbwKj/qKUIgOQ+j4rMYCtQX6Vz",
  render_errors: [view: FalseTradesWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FalseTrades.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
