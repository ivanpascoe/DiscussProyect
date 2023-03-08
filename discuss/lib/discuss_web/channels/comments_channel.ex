defmodule DiscussWeb.CommentsChannel do
  use DiscussWeb, :channel

  alias Discuss.Topic
  alias Discuss.Repo

  @impl true
  def join("comments:" <> topic_id, _params, socket) do
    topic_id = String.to_integer(topic_id)
    topic = Repo.get(Topic, topic_id)

    IO.inspect(topic_id)
    IO.puts("topic_id ^^^^___________________")
    IO.inspect(topic)
    IO.puts("topic ^^^^___________________")

    # topic = Topic
    # |> Repo.get(topic_id)
    # |> Repo.preload(comments: [:user])

    {:ok, %{}, socket}
  end

  # Channels can be used in a request/response fashion
  # by sending replies to requests from the client
  @impl true
  def handle_in(_name, %{"content" => content}, socket) do

    {:reply, :ok, socket}
  end

  # It is also common to receive messages from the client and
  # broadcast to everyone in the current topic (comments:lobby).
  @impl true
  def handle_in("shout", payload, socket) do
    broadcast(socket, "shout", payload)
    {:noreply, socket}
  end

  # Add authorization logic here as required.
  defp authorized?(_payload) do
    true
  end
end
