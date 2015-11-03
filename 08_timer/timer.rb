class Timer

	attr_accessor :seconds

	def initialize(seconds = 0)
		@seconds = seconds
	end

	def time_string
		hours = ((@seconds / 60.00 ) / 60.00 ).to_i.floor
		minutes = ((@seconds / 60.00) - (hours.to_i * 60)).to_i.floor
		seconds = (@seconds - ((hours * 3600) + (minutes * 60)))
		"#{sprintf '%02d', hours}:#{sprintf '%02d', minutes}:#{sprintf '%02d', seconds}"
	end
end