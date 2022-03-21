require 'net/http'

uri = URI('http://gb.ru')
puts Net::HTTP.get(uri)
