defmodule EditorLiveview.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :name, :string
      add :desc_string, :string
      add :desc_text, :text

      timestamps()
    end
  end
end
