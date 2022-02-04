defmodule Phexel.Reel do
  use Phoenix.Component

  import Phexel, only: [put_configuration: 2]

  @configuration [
    :"reel-height",
    :"reel-margin",
    :"reel-flex-basis"
  ]

  def reel(assigns) do
    assigns =
      assigns
      |> put_configuration(@configuration)

    ~H"""
        <div class="elc-reel" {@configuration}>
          <%= render_slot(@inner_block) %>
        </div>
    """
  end
end
