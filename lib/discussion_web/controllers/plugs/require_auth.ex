defmodule DiscussionWeb.Plugs.RequireAuth do
  ## For halt() function
  import Plug.Conn
  ## for quickflash and redirect
  import Phoenix.Controller

  alias DiscussionWeb.Router.Helpers

  def init(_params) do
  end

  def call(conn, _params) do
    if conn.assigns[:user] do
      conn
    else
      conn
      |> put_flash(:error, "You must be logged in.")
      |> redirect(to: Helpers.topic_path(conn, :index))
      |> halt()
    end
  end
end
