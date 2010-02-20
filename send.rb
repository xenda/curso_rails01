puts "Ingrese su primer número"
initial = gets.chomp

puts "Ingrese la operación"
operation = gets.chomp

puts "Ingrese su segundo número"
last = gets.chomp

resultado = initial.send(operation,last)

print "Y el resultado es: #{resultado}" 



