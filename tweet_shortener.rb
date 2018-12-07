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


def bulk_tweet_shortener(tweets)
    # new_arr = []
    
    tweets.each do |word|
     puts word_substituter(word)
    end
end

def selective_tweet_shortener(arr)
  if arr.length > 140
    word_substituter(arr)
  else 
    arr
  end 
end


def shortened_tweet_truncator(arr)
    if arr.length > 140
      word_substituter(arr)[0..136] +"..."
    else 
      arr
    end
end



