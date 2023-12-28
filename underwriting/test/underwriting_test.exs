defmodule UnderwritingTest do
  use ExUnit.Case
  doctest Underwriting

  test "greets the world" do
    assert Underwriting.hello() == :world
  end
end
