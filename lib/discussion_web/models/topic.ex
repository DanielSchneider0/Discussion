defmodule DiscussionWeb.Topic do
  use DiscussionWeb, :model

  schema "topics" do
    field(:title, :string)
    belongs_to(:user, DiscussionWeb.User)
    has_many(:comments, DiscussionWeb.Comment)
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
