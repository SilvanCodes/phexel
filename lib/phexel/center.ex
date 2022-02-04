defmodule Phexel.Center do
  use Phoenix.Component

  def center(assigns) do
    ~H"""
      <div class="elc-center">
        <%= render_slot(@inner_block) %>
      </div>
    """
  end
end
