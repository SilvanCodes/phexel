defmodule Phexel.Imposter do
  @moduledoc false
  use Phoenix.Component

  import Phexel, only: [base: 3]

  @allowed_configuration_keys [
    :"imposter-position",
    :"imposter-margin"
  ]

  attr(:"imposter-position", :string)
  attr(:"imposter-margin", :string)
  attr(:tag, :string, default: "div")
  attr(:rest, :global)

  slot(:inner_block, required: true)

  def imposter(assigns) do
    base(assigns, @allowed_configuration_keys, "elc-imposter")
  end
end
