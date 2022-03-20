defmodule AboundWeb.Graphql.Schema do
  use Absinthe.Schema

  query do
    field :dummy, :integer do
      resolve fn _entity, _args, _context ->
        {:ok, 5}
      end
    end
  end
end
