defmodule DiscussWeb.TopicController do
  use DiscussWeb, :controller

  alias DiscussWeb.Topic
  alias Discuss.Repo

  def index(conn, _params) do
    topics = Repo.all(Topic)
    render(conn, "index.html", topics: topics)
  end

  def new(conn, _params) do
    changeset = Topic.changeset(%Topic{}, %{})
    render(conn, "new.html", changeset: changeset)
     #Plug.Conn.send_resp(conn, 200, "woli mondo")
  end

  def create(conn, %{"topic" => topic}) do
    changeset = Topic.changeset(%Topic{}, topic)

    case Discuss.Repo.insert(changeset) do
      {:ok, post} ->
        conn
          |> put_flash(:info, "Topic Created")
          |> redirect(to: Routes.topic_path(conn, :index))
          # Reminder that topic_path is function of Routes(Routes.topic_path)
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)

    end
  end
 end
