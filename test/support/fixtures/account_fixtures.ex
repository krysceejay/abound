defmodule Abound.AccountFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Abound.Account` context.
  """

  @doc """
  Generate a role.
  """
  def role_fixture(attrs \\ %{}) do
    {:ok, role} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Abound.Account.create_role()

    role
  end

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        first_name: "some first_name"
      })
      |> Abound.Account.create_user()

    user
  end

  @doc """
  Generate a company.
  """
  def company_fixture(attrs \\ %{}) do
    {:ok, company} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Abound.Account.create_company()

    company
  end
end
