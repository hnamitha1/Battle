
class Fighter

  DEFAULT_HP = 20

  def initialize name, hp = DEFAULT_HP
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= Kernel.rand(5)
  end


  attr_accessor :hp, :name

end
