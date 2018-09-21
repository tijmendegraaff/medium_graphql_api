defmodule MediumGraphqlApi.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add(:title, :string)
      add(:content, :text)
      add(:published, :boolean, default: false, null: false)
      add(:user_id, references(:users, on_delete: :delete_all))

      timestamps()
    end

    create(index(:posts, [:user_id]))
  end
end
