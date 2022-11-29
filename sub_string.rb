dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(phrase, dictionary)
  matched_words = {}
  phrase_array = phrase.split
  for i in 0..phrase_array.length-1
    for j in 0..dictionary.length-1
      if phrase_array[i].include?(dictionary[j])
        if matched_words.key?(dictionary[j])
          matched_words[dictionary[j]] = matched_words.fetch(dictionary[j]) + 1
        else
          matched_words[dictionary[j]] = 1
        end
      end
    end
  end
  puts matched_words
end

substrings("Howdy partner, sit down! How's it going?", dictionary)

#the PLAN
#input phrase
#turn phrase into words in array => word
#turn word into array => letters
#turn dictionary work into array => letter_check
#check letters to letter_check, using idx from letter_check length
#if after idx is complete and it still fits, hash key = dictionary work and value +1
#if not fit, next