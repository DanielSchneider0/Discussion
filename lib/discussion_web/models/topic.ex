defmodule DiscussionWeb.Topic do
  use DiscussionWeb, :model

  schema "topics" do
    field(:title, :string)
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
