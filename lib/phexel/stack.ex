defmodule Phexel.Stack do
  use Phoenix.Component

  import Phexel, only: [put_configuration: 2]

  @configuration [:"stack-margin", :"stack-split"]

  def stack(assigns) do
    assigns =
      assigns
      |> put_configuration(@configuration)

    ~H"""
      <!--- This additional wrapping div is required to prevent unwanted CSS-Variable overwrites when directly nesting stacks. --->
      <div>
        <div class="elc-stack" {@configuration}>
          <%= render_slot(@inner_block) %>
        </div>
      </div>
    """
  end
end
