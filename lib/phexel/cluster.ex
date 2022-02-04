defmodule Phexel.Cluster do
  use Phoenix.Component

  import Phexel, only: [put_configuration: 2]

  @configuration [:"cluster-margin", :"cluster-justify-content"]

  def cluster(assigns) do
    assigns =
      assigns
      |> put_configuration(@configuration)

    ~H"""
      <div class="elc-cluster" {@configuration}>
        <!--- This additional wrapping div is required as the layout is more complex. --->
        <div>
          <%= render_slot(@inner_block) %>
        </div>
      </div>
    """
  end
end
