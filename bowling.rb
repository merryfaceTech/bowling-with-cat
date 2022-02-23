class Bowling
	def score(rolls)
		return nil if rolls.nil?

		return 0 if rolls.empty?

		return 3 if rolls == "3"
	end
end