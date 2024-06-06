defmodule Phexel.Grid do
  @moduledoc false
  use Phoenix.Component

  import Phexel, only: [base: 3]

  @allowed_configuration_keys [
    :"grid-grid-gap",
    :"grid-column-min-width"
  ]

  attr(:"grid-grid-gap", :string)
  attr(:"grid-column-min-width", :string)
  attr(:tag, :string, default: "div")
  attr(:rest, :global)

  slot(:inner_block, required: true)

  def grid(assigns) do
    base(assigns, @allowed_configuration_keys, "elc-grid")
  end
end
