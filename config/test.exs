use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :distillery_example, ExampleWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :distillery_example, Example.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "myuser",
  password: "mypass",
  database: "mydb",
  hostname: "54.242.69.94",
  pool: Ecto.Adapters.SQL.Sandbox
