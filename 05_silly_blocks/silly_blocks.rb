def reverser
	yield.reverse.split(" ").reverse.join(" ")
end

def adder(num = 1)
	yield.to_i + num
end

def repeater(num = 1)
	num.times do yield
	end
end
