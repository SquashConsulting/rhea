defmodule Rhea.Repo.Migrations.CreateUsers do
  alias Elixir.Rhea.Repo

  def up do
    Repo.create_collection("users", :document)
  end

  def down do
    Repo.drop_collection("users")
  end
end
