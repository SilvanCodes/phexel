defmodule PhexelTest do
  use ExUnit.Case

  doctest Phexel

  describe "Has configuration to parse" do
    test "correctly parses configuration" do
      allowed_configuration_keys = [:"my-setting"]
      assigns = %{"my-setting": "cool-value"}

      assert "--my-setting: var(--cool-value, cool-value);" =
               Phexel.build_configuration_style(assigns, allowed_configuration_keys)
    end

    test "ignores unkown keys" do
      allowed_configuration_keys = []
      assigns = %{"my-setting": "cool-value"}

      assert "" = Phexel.build_configuration_style(assigns, allowed_configuration_keys)
    end

    test "handles literal styles" do
      allowed_configuration_keys = [:"my-setting"]
      assigns = %{"my-setting": "cool-value", rest: %{style: "display: flex;"}}

      assert "--my-setting: var(--cool-value, cool-value); display: flex;" =
               Phexel.build_configuration_style(assigns, allowed_configuration_keys)
    end
  end

  describe "Correctly adds classes" do
    test "no additional classes" do
      assigns = %{"my-setting": "cool-value"}

      assert "my-class" = Phexel.build_configuration_class(assigns, "my-class")
    end

    test "with additional classes" do
      assigns = %{rest: %{class: "foo"}}

      assert "my-class foo" = Phexel.build_configuration_class(assigns, "my-class")
    end
  end
end
