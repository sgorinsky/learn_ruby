#write your code here
def translate(sent)
	require 'set'
	vowels = Set['a', 'e', 'i', 'o', 'u']
	phonemes = Set["qu", "squ"]

	words = sent.split(/\s+/)
	
	full_sentence = ""
	for i in 0..words.length-1

		current_word = words[i]
		cache = ""
		
		until vowels.member?(current_word[0]) do
			if current_word[0,2] == 'qu'
				cache += current_word[0,2]
				current_word = current_word[2,current_word.length]
			elsif current_word[0,3] == "squ"
				cache += current_word[0,3]
                                current_word = current_word[3,current_word.length] 
			
			else
				cache += current_word[0]
				current_word = current_word[1,current_word.length]
			end
		end
		if i != words.length-1
			full_sentence += current_word + cache + "ay "			
		else
			full_sentence += current_word + cache + "ay"
		end
	end
	return full_sentence
end

puts translate("quiet")
puts translate("school")
puts translate("eat pie")	
puts translate("apple")
