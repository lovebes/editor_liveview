defmodule EditorLiveview.Items.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :desc_string, :string
    field :desc_text, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:name, :desc_string, :desc_text])
    |> validate_required([:name, :desc_string, :desc_text])
  end
end
