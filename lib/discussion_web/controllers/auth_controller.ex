defmodule DisscussionWeb.AuthController do
  use DisscussionWeb, :controller
  plug(Ueberauth)

  def callback(conn, params) do
    IO.inspect(conn.assigns)
    IO.inspect(params)
  end
end
