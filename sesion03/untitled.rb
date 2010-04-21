def print_report(options)
  
  layout = options[:layout]
  layout << ".txt" unless layout.include? "txt"
  
  header = File.read(layout)
  
  message = options[:message] || "Todo va bien"
  
  header + "\n" + message
  
end

puts print_report :layout => "user", :message => "MI MONITOR NO PRENDE!"

