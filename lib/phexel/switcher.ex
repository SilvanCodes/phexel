defmodule Phexel.Switcher do
  use Phoenix.Component

  import Phexel, only: [put_configuration: 2]

  @configuration [
    :"switcher-margin",
    :"switcher-min-width"
  ]

  def switcher(assigns) do
    assigns =
      assigns
      |> put_configuration(@configuration)

    ~H"""
        <div class="elc-switcher" {@configuration}>
        <!--- This additional wrapping div is required as the layout is more complex. --->
          <div>
            <%= render_slot(@inner_block) %>
          </div>
        </div>
    """
  end
end
