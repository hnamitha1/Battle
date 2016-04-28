class Game
	attr_reader :player1,:player2, :active_player
	
	def initialize(player1,player2)
		@player1 = player1
		@player2 = player2
		@active_player = @player1
	end

	def attack opponent
    opponent.receive_damage
  end

  def change_active_player
  	player1? ? (@active_player = @player2) : (@active_player = @player1)
  end

  def inactive_player
  	player1? ? @player2 : @player1
  end

  private

  	def player1?
  		@active_player == @player1
  	end

end