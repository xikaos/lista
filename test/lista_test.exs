defmodule ListaTest do
  use ExUnit.Case
  doctest Lista

  test "Mapsum function" do
    assert Lista.mapsum([1,2,3,4],&(&1 + 1)) == 14
  end

  test "Max function" do
  	assert Lista.max([1,2,3,5,2,6,12,33,23,0]) == 33
  end

  test "Map function" do
  	assert Lista.map([6,12,24,26,48], &(&1 - 6)) == [0,6,18,20,42]
  end

  test "Reduce function" do
  	assert Lista.reduce(
  		[["c","a"],["m","i"],["l","a"]],
  		"",
  		fn(acc, [a,b]) -> acc <> (a <> b) end) 
  	==
  	"camila"
  end

  test "Rotation function" do
  	assert Lista.rot('xikaos',13) == '?vxn??'
  end
end
