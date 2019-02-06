def alphabetize(arr)
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"   #string values
  arr.sort_by do |word|   #generates an array ofthe original collection element and the mapped value
    word.split("").collect do |letter|   #splitting each world to the letter value
      esperanto_alphabet.index(letter)   #returns index of the esp_alp for letter
    end
  end
end