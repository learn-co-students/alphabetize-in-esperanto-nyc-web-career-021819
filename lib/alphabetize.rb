def alphabetize(arr)
  arr.sort_by { |ele| ele.split("").map{ |char| "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".index(char) } }
end
