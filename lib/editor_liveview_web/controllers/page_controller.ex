defmodule EditorLiveviewWeb.PageController do
  use EditorLiveviewWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
