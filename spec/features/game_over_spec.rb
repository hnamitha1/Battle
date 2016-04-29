feature 'Game over' do
	before do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(18)
  end
	scenario 'if player reaches 0 points' do
		attack_player
		expect(page).to have_content 'Mittens loses'
	end
end