defmodule DiscussWeb.AuthController do
  use DiscussWeb, :controller
  plug Ueberauth

  def callback(conn, params) do
    IO.puts "______________"
    IO.inspect(conn.assigns)
    IO.puts "______________"
    IO.inspect(params)
    IO.puts "______________"
  end
end
