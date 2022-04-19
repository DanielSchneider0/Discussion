defmodule DisscussionWeb.Comment do
  use DiscussionWeb, :model

  schema "comments" do
    field(:content, :string)
    belongs_to(:user, DisscussionWeb.User)
    belongs_to(:topic, DisscussionWeb.Topic)

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:content])
    |> validate_required([:content])
  end
end
