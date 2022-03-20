defmodule Abound.Account.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    field :personal_email, :string
    field :work_email, :string
    field :gender, :string
    field :dob, :string
    field :nationality, :string
    field :id_type, :string
    field :id_number, :string
    field :passport_photo, :string
    field :phone_number, :string
    field :address, :string
    field :next_of_kin_fullname, :string
    field :next_of_kin_address, :string
    field :next_of_kin_email, :string
    field :next_of_kin_phone, :string
    field :next_of_kin_relationship, :string
    field :next_of_kin_live_check_period, :string
    field :date_of_employment, :string
    field :level, :string
    field :status, :string
    field :net_monthly_pay, :string
    field :percent_salary_benefit, :integer
    field :bank_name, :string
    field :account_name, :string
    field :account_number, :string
    field :bvn, :string

    belongs_to :role, Abound.Account.Role
    belongs_to :company, Abound.Account.Company

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :personal_email, :work_email, :gender, :dob, :nationality, :id_type, :id_number,
    :passport_photo, :phone_number, :address, :next_of_kin_fullname, :next_of_kin_address, :next_of_kin_email, :next_of_kin_phone,
    :next_of_kin_relationship, :next_of_kin_live_check_period, :date_of_employment, :level, :status, :net_monthly_pay, :percent_salary_benefit,
    :bank_name, :account_name, :account_number, :bvn, :company_id])
    |> validate_required([:first_name, :last_name, :personal_email, :work_email])
    |> validate_format(:work_email, ~r/@/)
  end
end
