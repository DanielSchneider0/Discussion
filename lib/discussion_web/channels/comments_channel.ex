defmodule DiscussionWeb.CommentsChannel do
  use DiscussionWeb, :channel

  def join(name, _params, socket) do
    {:ok, %{hey: "there"}, socket}
  end

  def handle_in(name) do
    IO.puts("&&&&&&&&&&&")
    IO.puts(name)
  end
end
