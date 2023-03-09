defmodule DiscussWeb.UserSocket do
  use Phoenix.Socket

  # A Socket handler
  #
  # It's possible to control the websocket connection and
  # assign values that can be accessed by your channel topics.

  ## Channels

  channel "comments:*", DiscussWeb.CommentsChannel


  # Socket params are passed from the client and can
  # be used to verify and authenticate a user. After
  # verification, you can put default assigns into
  # the socket that will be set for all channels, ie
  #
  #     {:ok, assign(socket, :user_id, verified_user_id)}
  #
  # To deny connection, return `:error`.
  #
  # See `Phoenix.Token` documentation for examples in
  # performing token verification on connect.
  @impl true
  def connect(%{"token" => token}, socket, _connect_info) do
    IO.inspect(token)
    IO.puts("----Token-----")
      # max_age: 1209600 is equivalent to two weeks in seconds
    case Phoenix.Token.verify(socket, "key", token, max_age: 1_209_600) do # "key" comes from L15 of root.html.heex
        {:ok, user_id} ->
          {:ok, assign(socket, :user_id, user_id)}

        {:error, reason} ->
          :error
          {:ok, socket}
      end
    end

  # Socket id's are topics that allow you to identify all sockets for a given user:
  #
  #     def id(socket), do: "user_socket:#{socket.assigns.user_id}"
  #
  # Would allow you to broadcast a "disconnect" event and terminate
  # all active sockets and channels for a given user:
  #
  #     Elixir.DiscussWeb.Endpoint.broadcast("user_socket:#{user.id}", "disconnect", %{})
  #
  # Returning `nil` makes this socket anonymous.
  @impl true
  def id(_socket), do: nil
end
