require_relative '../bowling'

describe 'bowling score' do
	it 'returns nil if given nil' do
		bowling = Bowling.new
		expect(bowling.score(nil)).to be_nil
	end

	it 'returns 0 if given no rolls' do
		bowling = Bowling.new
		expect(bowling.score("")).to be_zero
	end

	it 'returns 3 if given one roll with 3 pins knocked down' do
		bowling = Bowling.new
		expect(bowling.score("3")).to eq(3)
	end

	it 'returns 5 if given one roll with 5 pins knocked down' do
		bowling = Bowling.new
		expect(bowling.score("5")).to eq(5)
	end

	it 'returns 8 if given 2 rolls with 5 pins and 3 pins knocked down' do
		bowling = Bowling.new
		expect(bowling.score("53")).to eq(8)
	end

end
