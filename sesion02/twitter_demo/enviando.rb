# Importamos las gemas y bibliotecas respectivas
require 'rubygems'
require 'twitter'

PASS = 'nothere'
httpauth = Twitter::HTTPAuth.new('curso_rails', PASS)

client = Twitter::Base.new(httpauth)

client.update('Probando.. probando.. 1.. 2.. 3..')
