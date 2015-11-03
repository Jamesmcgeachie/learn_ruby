class Array

	def sum
		if length == 0
			0
		else
			total = 0
			each { |num| total += num }
			return total
		end
	end

# was wondering if there was a way to make square take the bang as an option rather than 2 methods?
	def square
		map { |num| num * num }
	end

	def square!
		map! { |num| num * num }
	end
end

