dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(phrase, dictionary)
  matched_words = {}
  phrase_array = phrase.split
  match = false
  for i in 0..phrase_array.length-1
    for j in 0..dictionary.length-1
      match = word_check?(phrase_array[i], dictionary[j])
      if match == true
        if matched_words.key?(dictionary[j])
          matched_words[dictionary[j]] = matched_words.fetch(dictionary[j]) + 1
        else
          matched_words[dictionary[j]] = 1
        end
        puts "Testing: #{dictionary[j]} against #{phrase_array[i]}"
        puts "Result: #{matched_words}"
      end
    end
  end
  puts matched_words
end

def word_check?(phrase_word, dictionary_word)
  match = false
  for i in 0..dictionary_word.length-1
    if phrase_word[i] != dictionary_word[i]
      match = false
      break
    else
      match = true
    end
  end

  return match
end

substrings("below low going test go low", dictionary)

#the PLAN
#input phrase
#turn phrase into words in array => word
#turn word into array => letters
#turn dictionary work into array => letter_check
#check letters to letter_check, using idx from letter_check length
#if after idx is complete and it still fits, hash key = dictionary work and value +1
#if not fit, next