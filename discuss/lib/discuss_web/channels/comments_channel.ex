defmodule DiscussWeb.CommentsChannel do
  use DiscussWeb, :channel
  alias Discuss.Posts.Topic

  @impl true
  # def join("comments:" <> topic_id, _params, socket) do
  #   topic_id = String.to_integer(topic_id)

  #   topic = Topic
  #   |> Repo.get(topic_id)
  #   |> Repo.preload(comments: [:user])

  #   {:ok, %{comments: topic.comments}, assign(socket, :topic, topic)}
  # end

  def join(name, payload, socket) do
    IO.puts("name_____________________________________")
    IO.inspect(name)
    IO.puts("payload_________________________________")
    IO.inspect(payload)
    IO.puts("socket__________________________________")
    IO.inspect(socket)
    IO.puts("end_____________________________________")
    {:ok, %{hey: "mathafacka"}, socket}

    # if authorized?(payload) do
    #   {:ok, socket}
    # else
    #   {:error, %{reason: "unauthorized"}}

  end

  # Channels can be used in a request/response fashion
  # by sending replies to requests from the client
  @impl true
  def handle_in("ping", payload, socket) do
    {:reply, {:ok, payload}, socket}
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
