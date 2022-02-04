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

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/phexel>.

