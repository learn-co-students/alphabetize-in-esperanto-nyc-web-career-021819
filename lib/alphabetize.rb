ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(array)
  array.sort_by do |word|
    word.split('').collect do |letter|
      ESPERANTO_ALPHABET.index(letter)
    end
  end
end