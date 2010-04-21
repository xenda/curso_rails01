def metodo ( parametro )
  
     2 * yield parametro
     
end
 
 metodo (1) {|i|  i ** 2}
 
 
 def metodo2(parametro, &bloque)
   
   puts bloque.call(parametro)
 
 end
 
 def metodo3(parametro,&bloque)
   2 * bloque.call(parametro)
 end
 
 bloque = lambda {|i| i ** 2}
 
 metodo2(2,&bloque)
 metodo3(4,&bloque)