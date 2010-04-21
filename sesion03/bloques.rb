# def metodo(argumento)
#   puts argumento
#   yield(argumento)
# end
# 
# 
# metodo(2){|i| puts i**2 }


def calculate(n,m)
  result = yield n,m
  puts result
end

calculate(1,2){|x,y| 2*(x+y)+ y**2 }
calculate(1,2){|x,y| 2**(x-y) }
calculate(1,2){|x,y| 2*(x**2+y)/ (y^(1/2)) }
