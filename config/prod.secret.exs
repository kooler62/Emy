use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :emy, Emy.Endpoint,
  secret_key_base: "Dh6I9Qg9F9dllDiyD8WMehp4jX03uXO3Kgv7T2YfLYwtTboS5xuIoFpYn9z+Tqun"

# Configure your database
config :emy, Emy.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "emy_prod",
  pool_size: 15
