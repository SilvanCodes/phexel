defmodule Phexel.Cover do
  use Phoenix.Component

  import Phexel, only: [base: 3]

  @allowed_configuration_keys [
    :"cover-padding",
    :"cover-margin",
    :"cover-min-block-size"
  ]

  attr(:"cover-padding", :string)
  attr(:"cover-margin", :string)
  attr(:"cover-min-block-size", :string)
  attr(:tag, :string, default: "div")
  attr(:rest, :global)

  slot(:inner_block, required: true)

  def cover(assigns) do
    base(assigns, @allowed_configuration_keys, "elc-cover")
  end
end
