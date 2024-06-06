defmodule Phexel.Switcher do
  @moduledoc false
  use Phoenix.Component

  import Phexel, only: [base: 3]

  @allowed_configuration_keys [
    :"switcher-gap",
    :"switcher-threshold"
  ]

  attr(:"switcher-gap", :string)
  attr(:"switcher-threshold", :string)
  attr(:tag, :string, default: "div")
  attr(:rest, :global)

  slot(:inner_block, required: true)

  def switcher(assigns), do: base(assigns, @allowed_configuration_keys, "elc-switcher")
end
