defmodule Phexel.Center do
  use Phoenix.Component

  import Phexel, only: [put_configuration: 2]

  @configuration [:"center-padding-inline"]

  def center(assigns) do
    assigns =
      assigns
      |> put_configuration(@configuration)

    ~H"""
      <div class="elc-center" {@configuration}>
        <%= render_slot(@inner_block) %>
      </div>
    """
  end
end
