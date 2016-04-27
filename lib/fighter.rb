
class Fighter

  DEFAULT_HP = 20

  def initialize name, hp = DEFAULT_HP
    @name = name
    @hp = hp
  end

  def attack opponent
    opponent.receive_damage
  end

  def receive_damage
    @hp -= 2
  end


  attr_accessor :hp, :name

end
