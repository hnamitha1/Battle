require 'game'

describe Game do
subject(:game) {described_class.new}
let(:slasher) {double :slasher}
let(:mittens) {double :mittens}

it "takes damage" do
    expect(mittens).to receive(:receive_damage)
    game.attack(mittens)
  end

end
