# value = true
# 
# if value then puts "Verdad!" end
#   
# if value 
#   puts "Verdad!"
# end
# 
# puts "Verdad!" if value
# 
# 
# # Under Age
# age = 15
# age_limit = 18
# 
# unless age > age_limit
#   puts "No tienes edad suficiente "
# end
# 
# puts "No tienes edad suficiente " unless age > age_limit
# 
# 
# unless age > age_limit
#   puts "No tienes edad suficiente "
# else
#   puts "¡Adelante!"
# end
# 
# 
puts "Dos + Dos = Cuatro. ¿Esto es Verdadero o Falso? (V/F)"
respuesta = gets.chomp
resultado = if respuesta == "V"
              "¡Correcto! Pero eso ya lo sabías"
            else
              "Falso. ¿Estás seguro que estás en el curso correcto?"
            end

puts resultado


puts "Dos + Dos = Cuatro. ¿Esto es Verdadero o Falso? (V/F)"
respuesta = gets.chomp
resultado = case respuesta
              when "V" then "¡Correcto! Pero eso ya lo sabías"
              when "F" : "Falso. ¿Estás seguro que estás en el curso correcto?"
              else "¿Uh? No te entendí"
            end
            
puts resultado




