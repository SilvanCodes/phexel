defmodule PhexelTest do
  use ExUnit.Case
  doctest Phexel

  describe "Has configuration to parse" do
    test "correctly parses configuration" do
      configuration = [:"my-setting"]
      assigns = %{"my-setting": "cool-value"}

      assert %{configuration: [style: "--my-setting: var(--cool-value, cool-value);"]} =
               Phexel.put_configuration(assigns, configuration)
    end

    test "ignores unkown keys" do
      configuration = []
      assigns = %{"my-setting": "cool-value"}

      assert %{configuration: [style: ""]} = Phexel.put_configuration(assigns, configuration)
    end
  end
end
