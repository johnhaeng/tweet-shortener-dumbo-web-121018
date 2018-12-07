# Write your code here.

def dictionary
  new = {
     "hello" => "hi", 
     "to" => "2",
     "two" => "2",
     "too" => "2", 
     "for" => "4",
     "four" => "4", 
     "be" => "b",
     "you" => "u",
     "at" => "@",
     "and" => "&" 
  }
end


def word_substituter(tweet)
  tweet_words = tweet.split(' ')
  new_tweet = []

  tweet_words.map do |words|
    dictionary.each do |word, short|
      if words == word
        words = short
      end
    end
    new_tweet << words
  end

  new_tweet.join(' ')
end


def bulk_tweet_shortener(arr)
  new_arr = []
  
  arr.each do |word|
    if word_substituter(word) 
      new_arr << word_substituter(word)
    else 
      new_arr << word
    end
  end
  
  puts new_arr  
end







