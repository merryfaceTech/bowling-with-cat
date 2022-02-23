class Bowling
	def score(rolls)
		return nil if rolls.nil?

		return rolls.split("").map(&:to_i).sum
	end
end