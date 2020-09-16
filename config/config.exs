# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :app_admin,
  ecto_repos: [AppAdmin.Repo]

# Configures the endpoint
config :app_admin, AppAdminWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/YM2ycwt+b7BSpcD4ugZ/HPS5NjZJO1mJAiVpi6xOcfkYZ9Pd6nF4gVnMblw8+mQ",
  render_errors: [view: AppAdminWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AppAdmin.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "KS+komh6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :app_admin, :pow,
  user: AppAdmin.Users.User,
  repo: AppAdmin.Repo,
  web_module: AppAdminWeb,
  extensions: [PowResetPassword],
  controller_callbacks: Pow.Extension.Phoenix.ControllerCallbacks,
  mailer_backend: AppAdminWeb.PowMailer

  config :app_admin, :pow_assent,
  providers: [
    github: [
      client_id: "442b4202f3531161ab2f",
      client_secret: "cf4f2c4776d5ec86e3cc2811c0fb355cb689ac1c",
      strategy: Assent.Strategy.Github
    ]
  ]
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
