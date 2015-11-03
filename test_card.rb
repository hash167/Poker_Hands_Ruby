require_relative 'Ante_1'

describe Card do
	let(:card) {Card.new('AD')}

	it 'can parse the card value' do
		expect(card.val).to eq 'A'
	end

	it 'can parse the card suite' do
		expect(card.suite).to eq 'D'
	end
end