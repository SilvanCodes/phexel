defmodule Phexel.Box do
  @moduledoc false
  use Phoenix.Component

  import Phexel, only: [base: 3]

  @allowed_configuration_keys [
    :"box-padding",
    :"box-border-width"
  ]

  attr(:"box-padding", :string, required: false)
  attr(:"box-border-width", :string, required: false)
  attr(:tag, :string, default: "div")
  attr(:rest, :global)

  slot(:inner_block, required: true)

  def box(assigns), do: base(assigns, @allowed_configuration_keys, "elc-box")
end
