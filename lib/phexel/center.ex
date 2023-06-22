defmodule Phexel.Center do
  use Phoenix.Component

  import Phexel, only: [base: 3]

  @allowed_configuration_keys [
    :"center-padding-inline"
  ]

  attr(:"center-padding-inline", :string, required: false)
  attr(:tag, :string, default: "div")
  attr(:rest, :global)

  slot(:inner_block, required: true)

  def center(assigns) do
    base(assigns, @allowed_configuration_keys, "elc-center")
  end
end
