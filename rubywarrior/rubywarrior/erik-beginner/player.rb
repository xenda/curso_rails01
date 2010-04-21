class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      warrior.walk! # add your code here
    else
		warrior.attack!
	end
  end
end
