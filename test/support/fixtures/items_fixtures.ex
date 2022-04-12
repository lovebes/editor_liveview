defmodule EditorLiveview.ItemsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `EditorLiveview.Items` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        desc_string: "some desc_string",
        desc_text: "some desc_text",
        name: "some name"
      })
      |> EditorLiveview.Items.create_item()

    item
  end
end
