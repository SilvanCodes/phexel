defmodule Phexel.Grid do
  use Phoenix.Component

  import Phexel, only: [put_configuration: 2]

  @configuration [
    :"grid-grid-gap",
    :"grid-column-min-width"
  ]

  def grid(assigns) do
    assigns =
      assigns
      |> put_configuration(@configuration)

    ~H"""
        <div class="elc-grid" {@configuration}>
          <%= render_slot(@inner_block) %>
        </div>
    """
  end
end
