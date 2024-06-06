defmodule Phexel.Stack do
  @moduledoc false
  use Phoenix.Component

  import Phexel, only: [base: 3]

  @allowed_configuration_keys [
    :"stack-margin",
    :"stack-split"
  ]

  attr(:"stack-margin", :string)
  attr(:"stack-split", :string)
  attr(:tag, :string, default: "div")
  attr(:rest, :global)

  slot(:inner_block, required: true)

  def stack(assigns) do
    base(assigns, @allowed_configuration_keys, "elc-stack")
  end
end
