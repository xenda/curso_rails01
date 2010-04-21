class Player
 
  attr_accessor :back_unknown, :health, :battle_spent, :fighting, :max_health, :rest_needed

  def taking_damage?
    damage = false
    damage = true if @health > @warrior.health
  end

  def close_enemies(list)
	 list.select{|i| not i.captive? and (i.x - @warrior.x) < 3 } 
  end

  def close_captives(list)
	list.select {|i| i.captive? and (i.x - @warrior.x) < 3 }
  end

  def healthy?
   @warrior.health.to_f > @max_health.to_f * 0.6
  end
 
  def almost_dead?
	@warrior.health < @max_health
  end

  def initialize
   @back_unknown ||= "unknown"
   @fighting = false
   @rest_needed = false
  end

  def setup(warrior)
   @warrior = warrior
   @max_health ||= @warrior.health
   @health ||= @warrior.health
  end 

  def battle_spent?
 	@fighting
  end

  def enemies_present?(enemies)
	enemies.size > 0
  end

  def captives_present?(captives)
	captives.size > 0
  end
	


   def act(direction = :forward)
    
    if @warrior.feel(direction).empty?

		around = @warrior.look(direction)
		enemies = close_enemies(around)
		captives = close_captives(around)
		#puts enemies[0].inspect
		if enemies_present?(enemies) and not captives_present?(captives)
			@warrior.shoot!
		else

		if battle_spent?
			puts "Cansado"
			@warrior.walk!(:backward)
            @fighting = false
            @rest_needed = true
		elsif @rest_needed and not taking_damage?
			puts "Descansando"
			if almost_dead?
				@warrior.rest!
			else
				@rest_needed = false
			end
		else
		if taking_damage? and not healthy?
           @warrior.walk!(:backward)
        elsif not healthy?
           @warrior.rest!
        else
 		   @warrior.walk!(direction)
        end
  		end
		end

	else
		if @warrior.feel(direction).captive?
			@warrior.rescue!(direction)
		else
			@warrior.attack!(direction)
            @fighting = true
		end
	end

   end

  def wall?
    @warrior.feel(:backward).wall?
  end
  
  def play_turn(warrior)

   setup(warrior)
 
	if @warrior.feel.wall?
		@warrior.pivot!
	else

   if @back_unknown and not wall?
     act(:backward)
   else 
     act
     @back_unknown = false
   end
    @health = @warrior.health
  end
	end
end
