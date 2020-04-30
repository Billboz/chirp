defmodule Chirp.Timeline.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :likes_count, :integer
    field :reposts_count, :integer
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:username, :body, :likes_count, :reposts_count])
    |> validate_required([:username, :body, :likes_count, :reposts_count])
  end
end
