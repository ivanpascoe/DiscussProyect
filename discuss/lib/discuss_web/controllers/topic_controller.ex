defmodule DiscussWeb.TopicController do
  use DiscussWeb, :controller

  alias DiscussWeb.Topic

  def new(conn, params) do
    changeset = Topic.changeset(%Topic{}, %{})
    render conn, "new.html", changeset: changeset
     #Plug.Conn.send_resp(conn, 200, "woli mondo")
  end

  def create(conn, %{"topic" => topic}) do
    changeset = Topic.changeset(%Topic{}, topic)

    case Discuss.Repo.insert(changeset) do
      {:ok, post} -> IO.inspect(post)
      {:error, changeset} -> IO.inspect(changeset)
    end
  end
 end
