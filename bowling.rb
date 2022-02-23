class Bowling
	def score(rolls)
		return nil if rolls.nil?
		total_score = 0
		rolls_array = rolls.split(" ")

		rolls_array.map_with_index do |frame, index|
			total_score += frame.split("").map(&:to_i).sum

			# If it's a spare, make the roll total 10
			if frame[1] == "/"
				total_score += 10 - frame[0]
			end

			# If the previous roll is a spare, add the extra roll points
			if index != 0 && rolls_array[index - 1][1]
				total_score += frame[0]
			end

			return total_score
		end
	end
end

