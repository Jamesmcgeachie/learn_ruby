class Book

	attr_reader :title

	def title=(title)
		little_words = ["and", "over", "the", "of", "in", "a", "an"]
		words_array = title.split
		capitalized = words_array.each_with_index do |word|
			case word
			when words_array[0] then word.capitalize!
			else word.capitalize! unless little_words.include? word
			end
		end
		@title = capitalized.join(" ")
	end
end