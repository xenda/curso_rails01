puts "Ingrese su primer número"
initial = gets.chomp.to_i

puts "Ingrese la operación"
operation = gets.chomp

puts "Ingrese su segundo número"
last = gets.chomp.to_i

resultado = initial.send(operation,last)

print "Y el resultado es: #{resultado}" 



