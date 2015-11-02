def echo(word)
	word
end

def repeat(input, num = 2 )
	((input.to_s + " ") * num).strip
end

def titleize(input)
	little_words = ["and", "over", "the"]
	words_array = input.split
	capitalized = words_array.each_with_index do |word|
		case word
		when words_array[0] then word.capitalize!
		else word.capitalize! unless little_words.include? word
		end
	end
	capitalized.join(" ")
end

def start_of_word(string, num)
	string[0..(num - 1)]
end

def first_word(input)
	input.split[0]
end

def shout(input)
	input.upcase
end