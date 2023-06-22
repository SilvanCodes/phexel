defmodule Phexel.Sidebar do
  use Phoenix.Component

  import Phexel, only: [base: 3]

  @allowed_configuration_keys [
    :"sidebar-flex-basis",
    :"sidebar-min-inline-size",
    :"sidebar-gap",
    :"sidebar-flex-direction"
  ]

  attr(:"sidebar-flex-basis", :string)
  attr(:"sidebar-min-inline-size", :string)
  attr(:"sidebar-gap", :string)
  attr(:"sidebar-flex-direction", :string)
  attr(:tag, :string, default: "div")
  attr(:rest, :global)

  slot(:inner_block, required: true)

  def sidebar(assigns) do
    base(assigns, @allowed_configuration_keys, "elc-sidebar")
  end
end
