#Primera versión
print "¿Qué edad tienes?"
user_age = gets.chomp

puts " ¿" + user_age + "? ¡Pareces de " + (user_age.to_i - 5).to_s + "!" 


#Segunda versión
print "¿Qué edad tienes?"
user_age = gets.chomp

sweet_age = user_age.to_i - 5
puts " ¿#{user_age}? ¡Pareces de #{sweet_age}!"