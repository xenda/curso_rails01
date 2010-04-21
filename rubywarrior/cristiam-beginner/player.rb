class Player
  def play_turn(warrior)
   if warrior.feel.empty?
     warrior.walk!
     else
    warrior.attack! # add your code here
    end
  end
end
