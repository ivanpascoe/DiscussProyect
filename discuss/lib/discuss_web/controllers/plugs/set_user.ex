defmodule Discuss.Plugs.SetUser do
  import Plug.Conn
  import Phoenix.Controller

  alias Discuss.Repo
  alias Discuss.User


  def init(_params) do

  end

  def call(conn, _params) do
    user_id = get_session(conn, :user_id)



    cond do
      user = user_id && Repo.get(User, user_id) ->
        result = assign(conn, :user, user)
        IO.puts("1________________________________")
        IO.inspect(conn.assigns)
        result

      true ->
        result = assign(conn, :user, nil)
        IO.puts("1________________________________")
        IO.inspect(conn.assigns)
        result
    end

    # cond do
    #   user = user_id && Repo.get(User, user_id) ->
    #     assign(conn, :user, user)
    #   true ->
    #     assign(conn, :user, nil)
    # end

  end

end
