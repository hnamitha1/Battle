require 'game'

describe Game do
	let(:slasher) {double :slasher, hp:0}
	let(:mittens) {double :mittens}
	subject(:game) {described_class.new(slasher,mittens)}

	it "takes damage" do
    expect(mittens).to receive(:receive_damage)
    game.attack(mittens)
  end

  it 'changes turns' do
  	expect{ game.change_active_player }.to change{ game.active_player }
  end

  it 'returns the inactive player' do
  	expect(game.inactive_player).to eq mittens
	end

  it 'game over returns true' do
    expect(game.game_over?).to eq true
  end
end