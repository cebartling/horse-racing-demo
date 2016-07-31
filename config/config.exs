# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :horse_racing_demo,
  ecto_repos: [HorseRacingDemo.Repo]

# Configures the endpoint
config :horse_racing_demo, HorseRacingDemo.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "baxKMJm30mCv09pee/zaOqsf8Lp+0XVWcFJZSZ3r3AFqVGV7Uyri3znzby6lvCq2",
  render_errors: [view: HorseRacingDemo.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HorseRacingDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
