file = File.open("texto_dummy.txt")
captured = []
captured << file.readline until captura == "Y el verso cae al alma como al pasto el rocío."
puts captured


