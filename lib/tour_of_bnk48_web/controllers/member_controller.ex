defmodule TourOfBnk48Web.MemberController do
    use TourOfBnk48Web, :controller

    alias TourOfBnk48.Member

    def members(conn, _params) do 

      members = [
        %Member{ code: "001", name: "cherpang", team: "BIII" }
      ]

      render(conn, "members.html", members: members)
    end

end