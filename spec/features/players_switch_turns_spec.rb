feature 'Players can swap turns' do
	scenario 'Player 1 switches turns with player 2' do
		sign_in_and_play_and_scratch
		click_link("Back")
		expect(page).to have_text("Mittens turn")
	end
end