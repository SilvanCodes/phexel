defmodule Phexel.Reel do
  use Phoenix.Component

  import Phexel, only: [base: 3]

  @allowed_configuration_keys [
    :"reel-block-size",
    :"reel-padding",
    :"reel-gap"
  ]

  attr(:"reel-block-size", :string)
  attr(:"reel-padding", :string)
  attr(:"reel-gap", :string)
  attr(:tag, :string, default: "div")
  attr(:rest, :global)

  slot(:inner_block, required: true)

  def reel(assigns) do
    base(assigns, @allowed_configuration_keys, "elc-reel")
  end
end
