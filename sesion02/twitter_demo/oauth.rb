# Importamos las gemas y bibliotecas respectivas
require 'rubygems'
require 'twitter'

# Registrar la aplicación en
# http://twitter.com/apps
CONSUMER_TOKEN = "6ypwK9UyjNeriivcQzH6Xw"
CONSUMER_SECRET = "124eiWEhL03ipe1JUQOQ8khmFOcjoLCAD86yFFQtw"

#Creamos el objeto autenticador
oauth = Twitter::OAuth.new(CONSUMER_TOKEN,CONSUMER_SECRET)
request_token = oauth.request_token.token
request_secret = oauth.request_token.secret

puts "*"*10
puts "Conectando a Twitter"
%x(open #{oauth.request_token.authorize_url})

print "Ingrese el PIN: "
pin = gets.chomp

oauth.authorize_from_request(request_token,request_secret, pin)
puts "¡Autorizado!"
puts "*"*10

client = Twitter::Base.new(oauth)
client.update('Desde la clase de Rails.. probando nuestro cliente')

# client.friends_timeline.each { |tweet| puts tweet.text }