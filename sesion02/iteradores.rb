capturado = []
line = "Poema 20"
  
File.open("texto_dummy.txt") do |file|

  while line.chomp != "Y el verso cae al alma como al pasto el rocío."
    line = file.readline
    capturado << line
  end

end

puts capturado
