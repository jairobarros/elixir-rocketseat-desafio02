defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "return zero when list is empty" do
      list = []

      response = ListFilter.call(list)

      expected_response = 0

      assert response == expected_response
    end

    test "return odd count of element in list" do
      list = [1, 3, 4, 6, "Cinco", 7]

      response = ListFilter.call(list)

      expected_response = 3

      assert response == expected_response
    end
  end
end
