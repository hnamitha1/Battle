feature 'Game over' do
	scenario 'if player reaches 0 points' do
		attack_player
		expect(page).to have_content 'Mittens loses'
	end
end