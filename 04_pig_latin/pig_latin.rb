require 'pry'

# Below is my horrible, horrible first attempt
# def translate(input)
# 	appenday = "ay"
# 	words = input.split(" ")
# 	words.map! do |word|
# 		word << appenday
# 	end
# 	if words[0][0] == "b"
# 		words[0].delete!(words[0][0])
# 	elsif words[0][0..1] == "ch"
# 		words[0].delete!(words[0][0..1])
# 	end
# 	return words.join(" ")
# end

def translate(input)
	vowels = ["a", "e", "i", "o", "u"]
	words = input.split(" ")
	words.each do |word|
		was_cap = check_case(word)
		word.downcase!
		if vowels.include? word[0]
			word << "ay"
			if was_cap == true
				word.capitalize!
			end
		elsif combo_check(word) == true
			combo_replace(word)
			if was_cap == true
				word.capitalize!
			end
		else
			word << "#{word[0]}ay"
			word.slice!(word[0])
			if was_cap == true
				word.capitalize!
			end
		end
	end
	words.join(" ")
end

def combo_check(word)
	con_combos = ["sch", "ch", "thr", "qu", "th", "br", "squ"]
	con_combos.each do |combo|
		if word.start_with? combo
			return true
		end
	end
	return false
end

def combo_replace(word)
	con_combos = ["sch", "ch", "thr", "qu", "th", "br", "squ"]
	con_combos.each do |combo|
		if word.start_with? combo
			word << "#{combo}ay"
			word.slice!(combo)
		end
	end
end

def check_case(word)
	regex = /[A-Z]/
	if regex.match(word[0])
		return true
	end
end
