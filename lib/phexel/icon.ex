defmodule Phexel.Icon do
  @moduledoc false
  use Phoenix.Component

  import Phexel, only: [base: 3]

  @allowed_configuration_keys []

  attr(:tag, :string, default: "i")
  attr(:rest, :global)

  slot(:inner_block, required: false)

  def icon(assigns), do: base(assigns, @allowed_configuration_keys, "elc-icon")
end
