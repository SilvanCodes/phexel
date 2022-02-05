defmodule Phexel.Cover do
  use Phoenix.Component

  import Phexel, only: [put_configuration: 2]

  @configuration [
    :"cover-padding",
    :"cover-margin",
    :"cover-min-block-size"
  ]

  def cover(assigns) do
    assigns =
      assigns
      |> put_configuration(@configuration)

    ~H"""
        <div class="elc-cover" {@configuration}>
          <%= render_slot(@inner_block) %>
        </div>
    """
  end
end
