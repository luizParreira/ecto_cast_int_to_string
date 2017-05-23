defmodule EctoCastintTest do
  use ExUnit.Case
  doctest EctoCastint

  describe "cast/1" do
    test "an integer" do
      assert {:ok, "1"} == EctoCastint.cast(1)
    end

    test "a string" do
      assert {:ok, "hello"} == EctoCastint.cast("hello")
    end

    test "a float" do
      assert :error == EctoCastint.cast(1.234)
    end
  end
end
