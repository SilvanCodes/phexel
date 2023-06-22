defmodule Phexel.Cluster do
  use Phoenix.Component

  import Phexel, only: [base: 3]

  @allowed_configuration_keys [
    :"cluster-gap",
    :"cluster-justify-content",
    :"cluster-align-items"
  ]

  attr(:"cluster-gap", :string)
  attr(:"cluster-justify-content", :string)
  attr(:"cluster-align-items", :string)
  attr(:tag, :string, default: "div")
  attr(:rest, :global)

  slot(:inner_block, required: true)

  def cluster(assigns) do
    base(assigns, @allowed_configuration_keys, "elc-cluster")
  end
end
