defmodule EditorLiveview.Repo do
  use Ecto.Repo,
    otp_app: :editor_liveview,
    adapter: Ecto.Adapters.Postgres
end
