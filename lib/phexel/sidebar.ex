defmodule Phexel.Sidebar do
  use Phoenix.Component

  import Phexel, only: [put_configuration: 2]

  @configuration [
    :"sidebar-flex-basis",
    :"sidebar-min-inline-size",
    :"sidebar-gap",
    :"sidebar-flex-direction"
  ]

  def sidebar(assigns) do
    assigns =
      assigns
      |> put_configuration(@configuration)

    ~H"""
        <div class="elc-sidebar" {@configuration}>
          <%= render_slot(@inner_block) %>
        </div>
    """
  end
end
