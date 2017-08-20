# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :calculator,
  ecto_repos: [Calculator.Repo]

# Configures the endpoint
config :calculator, Calculator.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kWX4CExLvvwId5+RNHO4EdBAE8tMJzL1HJ3AZD/e8BJiZ8eeZRFB3Py2Q8znpsZy",
  render_errors: [view: Calculator.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Calculator.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :template_engines,
  drab: Drab.Live.Engine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
