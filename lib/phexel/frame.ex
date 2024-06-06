defmodule Phexel.Frame do
  @moduledoc false
  use Phoenix.Component

  import Phexel, only: [base: 3]

  @allowed_configuration_keys [
    :"frame-n",
    :"frame-d"
  ]

  attr(:"frame-n", :string)
  attr(:"frame-d", :string)
  attr(:tag, :string, default: "div")
  attr(:rest, :global)

  slot(:inner_block, required: true)

  def frame(assigns) do
    base(assigns, @allowed_configuration_keys, "elc-frame")
  end
end
