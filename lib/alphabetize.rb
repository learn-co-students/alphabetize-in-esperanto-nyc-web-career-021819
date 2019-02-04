def alphabetize(arr)
  #Example array to sort: ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]
  #create variable to hold order of esp letters
  esp_a = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  #build new array to sort from original
  sorted_a = []

  arr.each do |phrase|
    sorted_a.push(phrase)
  end

  #Break up each element of the array into characters so we can iterate through each character
  char_sorted_a = []
  sorted_a.map! do |phrase|
    phrase.split("")
  end

  #Turn each element of the array into index numbers based on esp_a
  sorted_a.each do |phrase|
    phrase.map! do |character|
      if character != " "
        phrase[phrase.index(character)] = esp_a.index(character)
      else
        character = -1
      end
    end
  end
  
  #Sort parent array by child arrays
  sorted_a.sort!

  #Replace index numbers with letters
  sorted_a.each do |phrase|
    phrase.map! do |character|
      if character != -1
        phrase[phrase.index(character)] = esp_a[character]
      else
        character = " "
      end
    end
  end

  #join phrases back together
  sorted_a.map! do |phrase|
    phrase.join("")
  end

  return sorted_a

end

