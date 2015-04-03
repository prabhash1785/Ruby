def find_frequency(sentence, word)
  count = 0
  listOfWords = sentence.split(" ")
  for w in listOfWords
    if w.upcase == word.upcase then
      count = count + 1
     end
  end
  return count
end

puts find_frequency("Love this love this hello this", "love")