defmodule EditorLiveview.ItemsTest do
  use EditorLiveview.DataCase

  alias EditorLiveview.Items

  describe "items" do
    alias EditorLiveview.Items.Item

    import EditorLiveview.ItemsFixtures

    @invalid_attrs %{desc_string: nil, desc_text: nil, name: nil}

    test "list_items/0 returns all items" do
      item = item_fixture()
      assert Items.list_items() == [item]
    end

    test "get_item!/1 returns the item with given id" do
      item = item_fixture()
      assert Items.get_item!(item.id) == item
    end

    test "create_item/1 with valid data creates a item" do
      valid_attrs = %{desc_string: "some desc_string", desc_text: "some desc_text", name: "some name"}

      assert {:ok, %Item{} = item} = Items.create_item(valid_attrs)
      assert item.desc_string == "some desc_string"
      assert item.desc_text == "some desc_text"
      assert item.name == "some name"
    end

    test "create_item/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Items.create_item(@invalid_attrs)
    end

    test "update_item/2 with valid data updates the item" do
      item = item_fixture()
      update_attrs = %{desc_string: "some updated desc_string", desc_text: "some updated desc_text", name: "some updated name"}

      assert {:ok, %Item{} = item} = Items.update_item(item, update_attrs)
      assert item.desc_string == "some updated desc_string"
      assert item.desc_text == "some updated desc_text"
      assert item.name == "some updated name"
    end

    test "update_item/2 with invalid data returns error changeset" do
      item = item_fixture()
      assert {:error, %Ecto.Changeset{}} = Items.update_item(item, @invalid_attrs)
      assert item == Items.get_item!(item.id)
    end

    test "delete_item/1 deletes the item" do
      item = item_fixture()
      assert {:ok, %Item{}} = Items.delete_item(item)
      assert_raise Ecto.NoResultsError, fn -> Items.get_item!(item.id) end
    end

    test "change_item/1 returns a item changeset" do
      item = item_fixture()
      assert %Ecto.Changeset{} = Items.change_item(item)
    end
  end
end
