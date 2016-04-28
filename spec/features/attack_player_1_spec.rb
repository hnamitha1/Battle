feature 'Players 2 can attack player 1' do
	scenario 'player 1 is attacked' do
		sign_in_and_play_and_attack_player1
		expect(page).to have_text("Mittens attacks Slasher")
	end
end