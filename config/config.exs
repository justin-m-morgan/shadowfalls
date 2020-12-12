# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :shadowfalls,
  ecto_repos: [Shadowfalls.Repo]

# Configures the endpoint
config :shadowfalls, ShadowfallsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "n3/dcSkaWeCZuIeocJCSVkGmhaiwp3c35FSm1T5g+uYNz8ltl3hjAu7OR4exwfe2",
  render_errors: [view: ShadowfallsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Shadowfalls.PubSub,
  live_view: [signing_salt: "cms+52yD"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
