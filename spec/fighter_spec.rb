require 'fighter'

describe Fighter do
  subject(:slasher){ described_class.new "slasher"}
  subject(:mittens){ described_class.new "mittens"}

  it "displays the name" do
    expect(slasher.name).to eq "slasher"
  end

  it "returns HP" do
    expect(slasher.hp).to eq Fighter::DEFAULT_HP
  end

  it "takes damage" do
    expect(mittens).to receive(:receive_damage)
    slasher.attack(mittens)
  end

  it "reduces HP when taking damage" do
    expect{slasher.attack(mittens)}.to change { mittens.hp }.by(-2)
  end
end
