#write your code here
def echo(something)
	return something
end

def shout(something)
	return something.upcase
end

def repeat(str, n=2)
	full_str = ""
	for i in 1..n
		if (i !=n)
			full_str += str + " "
		else
			full_str += str
		end
	end
	return full_str
end

def start_of_word(word, start)
	return word[0,start]
end

def first_word(sent)
	return sent.gsub(/\s+.*/, '')
end

require 'set'
def titleize(sentence)
	words = sentence.split(/\s+/)
	little_words = Set["the", "over", "in", "on", "and"]
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

puts titleize("jaws")
puts titleize("david copperfield")
