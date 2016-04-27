feature 'attack Player 2' do
	scenario 'get a confirmation' do
		sign_in_and_play
		click_link  "Scratch"
		expect(page).to have_content 'Slasher attacks Mittens'
	end
end