defmodule Imageer.Image do
  use Imageer.Web, :model

  schema "images" do
    field :image, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:image])
    |> validate_required([:image])
  end
end
