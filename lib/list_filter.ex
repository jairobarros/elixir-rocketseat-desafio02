defmodule ListFilter do
  require Integer

  def call(list), do: filter(list)

  defp filter([]), do: 0

  defp filter(list) do
    Enum.filter(list, fn x -> is_number(x) && Integer.is_odd(x) end) |> Enum.count
  end

end
