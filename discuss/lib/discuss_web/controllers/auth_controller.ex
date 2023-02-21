defmodule DiscussWeb.AuthController do
  use DiscussWeb, :controller
  import Plug.Conn

  plug Ueberauth


 #Code taken from other proyect by hangster
  def callback(%{assigns: assigns} = conn, %{"provider" => provider} = params) do

  IO.puts ("1---------------")
  IO.inspect(conn)
  IO.puts ("2---------------")
  IO.inspect(params)
  IO.puts ("end---------------")


  #(%{assigns: assigns} = conn, %{"provider" => provider} = params) do
    #user_params = %{token: auth.credentials.token, email: auth.info.email, provider: provider}
    #changeset = User.changeset(%User{}, user_params)

   # sign_in(conn, changeset)
  end
end
