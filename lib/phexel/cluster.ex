defmodule Phexel.Cluster do
  use Phoenix.Component

  import Phexel, only: [put_configuration: 2]

  @configuration [
    :"cluster-gap",
    :"cluster-justify-content",
    :"cluster-align-items"
  ]

  def cluster(assigns) do
    assigns =
      assigns
      |> put_configuration(@configuration)

    ~H"""
      <div class="elc-cluster" {@configuration}>
        <%= render_slot(@inner_block) %>
      </div>
    """
  end
end
