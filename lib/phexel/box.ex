defmodule Phexel.Box do
  use Phoenix.Component

  import Phexel, only: [put_configuration: 2]

  @configuration [:"box-padding", :"box-border-width"]

  def box(assigns) do
    assigns =
      assigns
      |> put_configuration(@configuration)

    ~H"""
      <div class="elc-box" {@configuration}>
        <%= render_slot(@inner_block) %>
      </div>
    """
  end
end
