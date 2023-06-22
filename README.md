# Phexel

Phexel brings [Every Layout](https://every-layout.dev) to Phoenix!

If you think it's good, consider buying yourself a copy.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `phexel` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:phexel, "~> 0.1.0"}
  ]
end
```
otherwise go this way:

```elixir
def deps do
  [
    {:phexel, git: "https://github.com/SilvanCodes/phexel"}
  ]
end
```

Assuming a standard Phoenix project structure, add the following line to your `app.css`:
```css
@import "../../deps/phexel/assets/elc.css";
```

## Usage

Phexel provides a `Phoenix.Component` for each layout from [Every Layout](https://every-layout.dev). You can use these components by importing `Phexel` into your LiveView or LiveComponent like this:

```elixir
defmodule Web.Component.TodoList do
  use Phoenix.LiveComponent
  import Phexel

  def todo_list(assigns) do
    ~H"""
    <.box>
      <.stack>
        <form phx-change="update">
          <%= for todo <- @todos do %>
          <.cluster>
            <input type="checkbox" id={"todo-#{todo.id}"} name={"todo-#{todo.id}"} value={todo.id} checked={todo.done?}>
            <label for={"todo-#{todo.id}"}><%= todo.text %></label>
            <button phx-click="delete-todo" phx-value-todo={todo.id}><i class="fa-solid fa-trash"></i></button>
          </.cluster>
          <% end %>
        </form>
        <button phx-click="add-todo">
          <%# TODO: implement "The Icon" from Every Layout instead %>
          <.cluster>
            <i class="fa-solid fa-square-plus"></i>
            <span>Add Todo</span>
          </.cluster>
        </button>
      </.stack>
    </.box>
    """
  end
end
```

## Components

| [Every Layout](https://every-layout.dev) Component | Phexel Component  |
| -------------------------------------------------- | ----------------- |
| The Stack                                          | `<.stack>`        |
| The Box                                            | `<.box>`          |
| The Center                                         | `<.center>`       |
| The Cluster                                        | `<.cluster>`      |
| The Sidebar                                        | `<.sidebar>`      |
| The Switcher                                       | `<.switcher>`     |
| The Cover                                          | `<.cover>`        |
| The Grid                                           | `<.grid>`         |
| The Frame                                          | `<.frame>`        |
| The Reel                                           | `<.reel>`         |
| The Imposter                                       | `<.imposter>`     |
| The Icon                                           | _Not implemented_ |

Please refer to [Every Layout](https://every-layout.dev) if you want to learn more about when to use which component.
