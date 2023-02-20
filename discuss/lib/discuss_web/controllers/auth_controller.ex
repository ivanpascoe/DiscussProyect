defmodule DiscussWeb.AuthController do
  use DiscussWeb, :controller
  import Plug.Conn

  plug Ueberauth


 #Code taken from other proyect by hangster
  def callback(%{assigns: assigns} = conn, %{"provider" => provider} = params) do
    IO.puts("__________________________________")
    IO.inspect(conn)
    IO.puts("__________________________________")
    IO.inspect(params)

    auth =
      case assigns do
        %{ueberauth_auth: ueberauth_auth} -> ueberauth_auth
        %{ueberauth_failure: ueberauth_failure} -> ueberauth_failure
      end

      IO.puts("__________________________________")
      IO.inspect(auth)

    user_params = %{token: auth.credentials.token, email: auth.info.email, provider: provider}
    # changeset = User.changeset(%User{}, user_params)

    # signIn(conn, changeset)
  end

  # def callback(%{assigns: %{ueberauth_auth: auth}} = conn, params) do

  #  IO.puts("__________________________________")
  #  IO.inspect(auth)
  #  IO.puts("__________________________________")
  #  IO.inspect(conn)
  #  IO.puts("__________________________________")
  #  IO.inspect(params)

  #   conn
  # end

end
