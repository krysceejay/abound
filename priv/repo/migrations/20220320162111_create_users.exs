defmodule Abound.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string
      add :last_name, :string
      add :personal_email, :string
      add :work_email, :string
      add :gender, :string
      add :dob, :string
      add :nationality, :string
      add :id_type, :string
      add :id_number, :string
      add :passport_photo, :string
      add :phone_number, :string
      add :address, :string
      add :next_of_kin_fullname, :string
      add :next_of_kin_address, :string
      add :next_of_kin_email, :string
      add :next_of_kin_phone, :string
      add :next_of_kin_relationship, :string
      add :next_of_kin_live_check_period, :string
      add :date_of_employment, :string
      add :level, :string
      add :status, :string
      add :net_monthly_pay, :string
      add :percent_salary_benefit, :integer
      add :role_id, references(:roles, on_delete: :nothing), null: false, default: 1
      add :company_id, references(:companies, on_delete: :delete_all), null: false

      timestamps()
    end

    create index(:users, [:role_id])
    create index(:users, [:company_id])

  end
end
