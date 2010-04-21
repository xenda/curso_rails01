def print_report(options)
  layout = options[:layout]
  layout << ".txt" unless layout.include? "txt"
  
  header = File.read(layout) 
  message = options[:message] || "Todo va bien"
  
  yield header,message
  
end
 
# print_report :layout=>"admin",:message=>"Hola" do |cabecera, mensaje|
#   
#   puts "*"*30
#   puts cabecera
#   puts "*"*30
#   puts mensaje
#   
# end
# 
print_report :layout =>"user", :message=>"Mensaje urgente" do |c,m|
  
  puts "="* 100
  c = File.read("admin.txt")
  puts m,c
  
end
