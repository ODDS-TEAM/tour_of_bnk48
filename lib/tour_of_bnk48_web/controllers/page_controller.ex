defmodule TourOfBnk48Web.PageController do
  use TourOfBnk48Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
