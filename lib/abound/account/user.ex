defmodule Abound.Account.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :first_name, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name])
    |> validate_required([:first_name])
  end
end
