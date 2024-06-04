defmodule PersonalMoneyManagementTest do
  use ExUnit.Case
  doctest PersonalMoneyManagement

  test "greets the world" do
    assert PersonalMoneyManagement.hello() == :world
  end
end
