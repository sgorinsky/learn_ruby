require 'set'

def titleize(sentence)
	words = sentence.split(/\s+/)
	little_words = Set["the", "over", "in", "on", "and", "of", "a", "an"]
	sent = ""
	for i in 0..words.length-1
		current_word = words[i]
		if i != 0 && little_words.member?(current_word)
			sent += current_word + " "
		elsif i == words.length-1
			sent += current_word[0].upcase + current_word[1,current_word.length]
		else
			sent += current_word[0].upcase + current_word[1, current_word.length] + " "
		end
	end
	return sent
end


class Book
  attr_accessor :title
  def title
    return titleize(@title)
  end
end

gatsby = Book.new
gatsby.title = "gatsby"

puts gatsby.title


