# EctoCastIntToString

EctoCastIntToString is a simple library that enables ecto casting from integer to string.

## Installation

The package can be installed by adding `:ecto_cast_int_to_string` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:ecto_cast_int_to_string, "~> 0.1.0"}]
end
```

## Dependencies

As expected, `EctoCastIntToString` depends upon `Ecto` to work.

## Usage

Simply set the type of the column you would like to have casted to string.

```elixir
defmodule MyModel
  schema "my_model" do
    field :a_string, EctoCastIntToString

    timestamps()
  end
end
```

# License

EctoCastint is under MIT license. Check the `LICENSE` file for more details.
