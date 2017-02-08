defmodule Lista do
  def map([], _), do: []
	def map([head | tail], fun), do: [ fun.(head) | map(tail,fun)]

	def reduce([], acc, _fun), do: acc
	def reduce([head | tail], acc, fun) do
   reduce(tail, fun.(acc, head), fun)
  end
  def mapsum(list, fun) do
    Lista.reduce(Lista.map(list, fun), 0, &(&1 + &2))
  end

  def max([head | tail]), do: _max(tail, head) 

  defp _max([], head_p), do: head_p
  
  defp _max([head | tail], head_p) when head_p > head do
  	_max(tail, head_p)
  end

  defp _max([head | tail], head_p) when head_p < head do
  	_max(tail, head)
  end

  def rot([], _num), do: []

  def rot([head | tail], num) when head + num > 122 do
  	'#{[ "?" | rot(tail, num)]}'
  end

  def rot([head | tail], num) do
  	[ head + num | rot(tail, num) ]
  end

  def span(x,x), do: [ x | []]
  def span(x,y) do
    [ x | span(x + 1, y) ]
  end

end
