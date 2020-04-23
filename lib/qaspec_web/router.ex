defmodule QaspecWeb.Router do
  use QaspecWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", QaspecWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/qaspec", IndexPageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", QaspecWeb do
  #   pipe_through :api
  # end
end
