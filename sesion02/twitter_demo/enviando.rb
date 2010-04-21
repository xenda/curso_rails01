# Importamos las gemas y bibliotecas respectivas
require 'rubygems'
require 'twitter'

httpauth = Twitter::HTTPAuth.new('curso_rails', 'yaraher')

client = Twitter::Base.new(httpauth)

client.update('Probando.. probando.. 1.. 2.. 3..')
