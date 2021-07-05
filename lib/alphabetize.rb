require 'pry'


#build a function that returns its place in the alphabet
def arrayplace (letter)
  array= "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz ".chars
  array.find_index(letter)
end

=begin
def sortfunc (a,b)
  i = 0
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars
  aarray = a.split(//)
  barray = b.split(//)
  if a==b
    0
  else
    while aarray[i] == barray[i] && i < 999
      i += 1
    end
    if alphabet.index(aarray[i]) > alphabet.index(barray[i])
      -1
    else
      1
    end
  end
end

=end

def valuizer(string)
  i=0
  counter = 0
  array = string.split(//)
  while i<string.length
    counter = counter + (arrayplace(array[i]))*(40**(50-i))
    i += 1
  end
  counter
end

def alphabetize (array)
  newarray = array.sort_by {|a| valuizer(a)}
  newarray
end
