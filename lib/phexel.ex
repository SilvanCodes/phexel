defmodule Phexel do
  @moduledoc """
  This module contains layout components as they are described here: https://every-layout.dev
  The corresponding styles are here: https://elc.silvan.codes/elc.css
  """

  import Phoenix.Component, only: [sigil_H: 2, render_slot: 1, dynamic_tag: 1, assign: 2]

  def base(assigns, allowed_configuration_keys, type) do
    assigns =
      assign(assigns,
        rest:
          assigns.rest
          |> Map.put(:style, build_configuration_style(assigns, allowed_configuration_keys))
          |> Map.put(:class, build_configuration_class(assigns, type))
      )

    ~H"""
    <.dynamic_tag name={@tag} {@rest}>
      <%= render_slot(@inner_block) %>
    </.dynamic_tag>
    """
  end

  defdelegate stack(assigns), to: Phexel.Stack
  defdelegate box(assigns), to: Phexel.Box
  defdelegate center(assigns), to: Phexel.Center
  defdelegate cluster(assigns), to: Phexel.Cluster
  defdelegate cover(assigns), to: Phexel.Cover
  defdelegate frame(assigns), to: Phexel.Frame
  defdelegate grid(assigns), to: Phexel.Grid
  defdelegate imposter(assigns), to: Phexel.Imposter
  defdelegate reel(assigns), to: Phexel.Reel
  defdelegate sidebar(assigns), to: Phexel.Sidebar
  defdelegate switcher(assigns), to: Phexel.Switcher

  def build_configuration_style(assigns, keys) when is_list(keys) do
    [extract_configuration_styles(assigns, keys), extract_literal_styles(assigns)]
    |> Enum.join(" ")
    |> String.trim()
  end

  def build_configuration_class(assigns, class) do
    [class, extract_literal_classes(assigns)] |> Enum.join(" ") |> String.trim()
  end

  defp extract_configuration_styles(assigns, keys) do
    for {key, value} <- assigns,
        key in keys,
        into: "",
        do: "--#{key}: #{var(value)};"
  end

  defp var(value) do
    "var(--#{value}, #{value})"
  end

  defp extract_literal_styles(%{rest: %{style: literal_styles}}) do
    literal_styles
  end

  defp extract_literal_styles(%{}), do: ""

  defp extract_literal_classes(%{rest: %{class: literal_class}}) do
    literal_class
  end

  defp extract_literal_classes(%{}), do: ""
end
