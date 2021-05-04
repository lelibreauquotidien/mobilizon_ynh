# Mobilizon instance configuration

import Config

config :mobilizon, Mobilizon.Web.Endpoint,
   server: true,
   url: [host: "__DOMAIN__"],
   http: [
     ip: {0, 0, 0, 0, 0, 0, 0, 1},
     port: 4000
    ],
   secret_key_base: "__RANDOM__"

config :mobilizon, Mobilizon.Web.Auth.Guardian,
  secret_key: "__RANDOM__"

config :mobilizon, :instance,
  name: "__NAME__",
  description: "",
  hostname: "__DOMAIN__",
  registrations_open: false,
  demo: false,
  allow_relay: true,
  federating: true,
  email_from: "__APP__@__DOMAIN__",
  email_reply_to: "__APP__@__DOMAIN__"

config :mobilizon, Mobilizon.Storage.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "__DB_USER__",
  password: "__DB_PWD__",
  database: "__DB_NAME__",
  hostname: "localhost",
  port: "5432",
  pool_size: 10
