defmodule QaspecWeb.PageController do
  use QaspecWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
