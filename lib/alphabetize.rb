
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by do |string|
    string.split("").map do |character|
      ESPERANTO_ALPHABET.index(character)
    end
  end
end
