defmodule Discuss.Topic do
  use Ecto.Schema
  import Ecto.Changeset
  alias Discuss.Topic
  schema "topics" do
    field :title, :string

    #timestamps()
  end

  @doc false
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
