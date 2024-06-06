defmodule Phexel.Container do
  @moduledoc false
  use Phoenix.Component

  import Phexel, only: [base: 3]

  @allowed_configuration_keys [
    :"container-name"
  ]

  attr(:"container-name", :string, required: true)
  attr(:tag, :string, default: "div")
  attr(:rest, :global)

  slot(:inner_block, required: true)

  def container(assigns), do: base(assigns, @allowed_configuration_keys, "elc-container")
end
