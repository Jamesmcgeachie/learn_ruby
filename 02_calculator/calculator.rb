def sum(input)
	case
	when input == []
	 return 0
	else
		input.reduce(:+)
	end
end

def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def multiply(x, y, z = 1)
	x * y * z
end

def factorial(input)
	if input == 0
		1
	else
	input.downto(1).inject(:*)
	end
end