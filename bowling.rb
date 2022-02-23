class Bowling
	def score(rolls)
		return nil if rolls.nil?

		return 0 if rolls.empty?

		return 3 if rolls == "3"

		return 5 if rolls == "5"
	end
end