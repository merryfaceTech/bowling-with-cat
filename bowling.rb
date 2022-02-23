class Bowling
	def score(rolls)
		return nil if rolls.nil?

		return rolls[0].to_i + rolls[1].to_i
	end
end