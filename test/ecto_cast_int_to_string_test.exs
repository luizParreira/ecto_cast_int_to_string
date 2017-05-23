defmodule EctoCastIntToStringTest do
  use ExUnit.Case
  doctest EctoCastIntToString

  describe "cast/1" do
    test "an integer" do
      assert {:ok, "1"} == EctoCastIntToString.cast(1)
    end

    test "a string" do
      assert {:ok, "hello"} == EctoCastIntToString.cast("hello")
    end

    test "a float" do
      assert :error == EctoCastIntToString.cast(1.234)
    end
  end

  describe "load/1" do
    test "a string" do
      assert {:ok, "hello"} == EctoCastIntToString.load("hello")
    end
  end

  describe "dump/1" do
    test "an integer" do
      assert :error == EctoCastIntToString.dump(1)
    end

    test "a string" do
      assert {:ok, "hello"} == EctoCastIntToString.dump("hello")
    end

    test "a float" do
      assert :error == EctoCastIntToString.dump(1.234)
    end
  end
end
