feature 'reduce hp' do
	before do
      sign_in_and_play
      allow(Kernel).to receive(:rand).and_return(2)
    end
	scenario 'get a confirmation with lower HP for player 2' do
		
		sign_in_and_play_and_scratch
		#puts allow(Kernel).to receive(:rand).and_return(3)
    expect(page).to have_content 'Poor Mittens now only has 18 Hit Points'
  end

  scenario "get a confirmation with lower HP for player 1" do
  	sign_in_and_play_and_attack_player1
  	expect(page).to have_content 'Poor Slasher now only has 18 Hit Points'
  end
end
