feature 'reduce hp' do
	scenario 'get a confirmation with lower HP for player 2' do
		sign_in_and_play_and_scratch
    expect(page).to have_content 'Poor Mittens now only has 18 Hit Points'
  end

  scenario "get a confirmation with lower HP for player 1" do
  	sign_in_and_play_and_attack_player1
  	expect(page).to have_content 'Poor Slasher now only has 18 Hit Points'
  end
end
