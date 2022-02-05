defmodule Phexel.Switcher do
  use Phoenix.Component

  import Phexel, only: [put_configuration: 2]

  @configuration [
    :"switcher-gap",
    :"switcher-threshold"
  ]

  def switcher(assigns) do
    assigns =
      assigns
      |> put_configuration(@configuration)

    ~H"""
        <div class="elc-switcher" {@configuration}>
          <%= render_slot(@inner_block) %>
        </div>
    """
  end
end
