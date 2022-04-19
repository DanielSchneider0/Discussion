defmodule DiscussionWeb.Comment do
  use DiscussionWeb, :model

  schema "comments" do
    field(:content, :string)
    belongs_to(:user, DiscussionWeb.User)
    belongs_to(:topic, DiscussionWeb.Topic)

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:content])
    |> validate_required([:content])
  end
end
