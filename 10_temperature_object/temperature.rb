class Temperature

	attr_accessor :f, :c

	def initialize(options = {f: 0, c: 0})
		@f = options[:f].to_i
		@c = options[:c].to_i
	end

	def self.in_fahrenheit(temp)
		fah = new({ f: temp.to_i})
		return fah
	end

	def self.in_celsius(temp)
		cel = new({ c: temp.to_i})
		return cel
	end

	def to_fahrenheit
		if @f > 0
			@f
		else
			@f = (( @c / (5.0 / 9) ) + 32).ceil
		end
		return @f
	end

	def to_celsius
		if @c > 0
			@c
		else
			@c = (( @f - 32 ) * ( 5.0 / 9.0 )).ceil
		end
		return @c
	end
end

# I would rather not have the celsius and fahrenheit variables in each other's initialize, not sure of alternative.
class Fahrenheit < Temperature

	def initialize(num)
		@f = num.to_i
		@c = 0
	end
end

class Celsius < Temperature

	def initialize(num)
		@c = num.to_i
		@f = 0
	end
end