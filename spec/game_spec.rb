require 'game'

describe Game do
	let(:slasher) {double :slasher}
	let(:mittens) {double :mittens}
	subject(:game) {described_class.new(slasher,mittens)}

	it "takes damage" do
    expect(mittens).to receive(:receive_damage)
    game.attack(mittens)
  end

end