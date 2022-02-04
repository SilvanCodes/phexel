defmodule Phexel.Imposter do
  use Phoenix.Component

  import Phexel, only: [put_configuration: 2]

  @configuration [
    :"imposter-position",
    :"imposter-margin"
  ]

  def imposter(assigns) do
    assigns =
      assigns
      |> put_configuration(@configuration)

    ~H"""
        <div class="elc-imposter" {@configuration}>
          <%= render_slot(@inner_block) %>
        </div>
    """
  end
end
