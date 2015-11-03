def translate(input)
	vowels = ["a", "e", "i", "o", "u"]
	words = input.split(" ")
	words.each do |word|
		was_cap = check_case(word)
		word.downcase!
		if vowels.include? word[0]
			word << "ay"
		elsif combo_check(word) == true
			combo_replace(word)
		else
			word << "#{word[0]}ay"
			word.slice!(word[0])
		end
		if was_cap == true
			word.capitalize!
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
