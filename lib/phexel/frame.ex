defmodule Phexel.Frame do
  use Phoenix.Component

  import Phexel, only: [put_configuration: 2]

  @configuration [
    :"frame-n",
    :"frame-d"
  ]

  def frame(assigns) do
    assigns =
      assigns
      |> put_configuration(@configuration)

    ~H"""
        <div class="elc-frame" {@configuration}>
          <%= render_slot(@inner_block) %>
        </div>
    """
  end
end
