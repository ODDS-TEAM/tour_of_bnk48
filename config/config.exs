# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tour_of_bnk48,
  ecto_repos: [TourOfBnk48.Repo]

# Configures the endpoint
config :tour_of_bnk48, TourOfBnk48Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hn1+Lm698ruFZCaWGWWaUCGHPKEZt9Sdt2scmTnamlEACqG0mT4p4ocwYHlMVL94",
  render_errors: [view: TourOfBnk48Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TourOfBnk48.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "B8Z2fotL"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
