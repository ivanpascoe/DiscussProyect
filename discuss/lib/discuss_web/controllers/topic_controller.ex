defmodule DiscussWeb.TopicController do
  use DiscussWeb, :controller

  alias DiscussWeb.Topic

  def new(conn, params) do
    changeset = Topic.changeset(%Topic{}, %{})
    render conn, "new.html", changeset: changeset
     #Plug.Conn.send_resp(conn, 200, "woli mondo")
  end

  def create(conn, %{"topic" => topic}) do


  end
 end
