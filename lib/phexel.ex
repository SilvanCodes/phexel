defmodule Phexel do
  @moduledoc """
  This module contains layout components as they are described here: https://every-layout.dev
  The corresponding styles are here: https://elc.silvan.codes/elc.css
  """

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

  def var(value) do
    "var(--#{value}, #{value})"
  end

  def put_configuration(assigns, keys) when is_list(keys) do
    style = extract_configuration_styles(assigns, keys) <> extract_literal_styles(assigns)

    assigns
    |> Map.put(:configuration, style: style)
  end

  defp extract_configuration_styles(assigns, keys) do
    for {key, value} <- assigns,
        key in keys,
        into: "",
        do: "--#{key}: #{var(value)};"
  end

  defp extract_literal_styles(%{style: literal_styles}) do
    literal_styles
  end

  defp extract_literal_styles(%{}), do: ""
end
