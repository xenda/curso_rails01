file = File.open("texto_dummy.txt")
captured = []
captured << file.readline while captured != "Y el verso cae al alma como al pasto el rocío."
puts captured