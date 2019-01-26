defmodule Practice do
  @moduledoc """
  Practice keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def double(x) do
    2 * x
  end

  def calc(expr) do
    # This is more complex, delegate to lib/practice/calc.ex
    Practice.Calc.calc(expr)
  end

  def factor(x) do
    calcFactors(x, 2, [])
  end

  def calcFactors(x, iterator, acc) do
    if x <= 1 do
      acc
    else if rem(x, iterator) === 0 do
      calcFactors(div(x, iterator), iterator, acc ++ [iterator])
    else
      calcFactors(x, iterator + 1, acc)
    end
  end
  end

  def palindrome(x) do
    String.downcase(String.reverse(x)) == String.downcase(x)
  end
end
