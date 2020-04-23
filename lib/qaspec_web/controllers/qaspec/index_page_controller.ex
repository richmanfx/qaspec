defmodule QaspecWeb.IndexPageController do
  @moduledoc """
    Контроллер стартовой/индексной страницы
  """
  use QaspecWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

end
