defmodule TourOfBnk48Web.MemberController do
    use TourOfBnk48Web, :controller

    def members(conn, _params) do 
      render(conn, "members.html")
    end

end