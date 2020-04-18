defmodule TourOfBnk48Web.Router do
  use TourOfBnk48Web, :router

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

  scope "/", TourOfBnk48Web do
    pipe_through :browser

    get "/", PageController, :index
    get "/members", MemberController, :members
  end

  # Other scopes may use custom stacks.
  # scope "/api", TourOfBnk48Web do
  #   pipe_through :api
  # end
end
