defmodule DiscussionWeb.CommentsChannel do
  use DiscussionWeb, :channel

  def join(name, _params, socket) do
    {:ok, %{hey: "there"}, socket}
  end

  def handle_in(name, message, socket) do
    {:reply, :ok, socket}
  end
end
