defmodule DiscussWeb.TopicController do
  use DiscussWeb, :controller

  def new(conn, attrs) do
     Plug.Conn.send_resp(conn, 200, "woli mondo")


  end
end
