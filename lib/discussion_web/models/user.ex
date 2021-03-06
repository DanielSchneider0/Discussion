defmodule DiscussionWeb.User do
  use DiscussionWeb, :model

  schema "users" do
    field(:email, :string)
    field(:provider, :string)
    field(:token, :string)
    has_many(:comments, DiscussionWeb.Comment)
    has_many(:topics, DiscussionWeb.Topic)

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :provider, :token])
    |> validate_required([:email, :provider, :token])
  end
end
