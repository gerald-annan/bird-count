defmodule BirdCount do
  def today(list) do
    # Please implement the today/1 function
    case list do
      [] -> nil
      [h | _] -> h
    end
  end

  def increment_day_count(list) do
    # Please implement the increment_day_count/1 function
    case list do
      [] -> [1]
      [h | t] -> [h + 1 | t]
    end
  end

  def has_day_without_birds?(list) do
    # Please implement the has_day_without_birds?/1 function
    # Enum.any?(list, &(&1 == 0))
    case list do
      [] -> false
      [0 | _] -> true
      [_ | t] -> has_day_without_birds?(t)
    end
  end

  def total(list) do
    # Please implement the total/1 function
    # case list do
    #   [] -> 0
    #   [_|_] -> Enum.reduce(list, &(&1 + &2))
    # end
    case list do
      [] -> 0
      [h | t] -> h + total(t)
    end
  end

  def busy_days(list) do
    # Please implement the busy_days/1 function
    # Enum.filter(list, &(&1 >= 5)) |> Enum.count()
    case list do
      [] ->
        0

      [h | t] ->
        cond do
          h >= 5 -> 1 + busy_days(t)
          true -> busy_days(t)
        end
    end
  end
end
