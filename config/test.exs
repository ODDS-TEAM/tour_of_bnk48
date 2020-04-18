use Mix.Config

# Configure your database
config :tour_of_bnk48, TourOfBnk48.Repo,
  username: "postgres",
  password: "postgres",
  database: "tour_of_bnk48_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :tour_of_bnk48, TourOfBnk48Web.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
