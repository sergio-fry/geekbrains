require 'faraday'
require 'faraday/net_http'


class RequestWithRedirect
  def get(url)
    response = Faraday.get(url)

    if response.headers['location'].nil?
      response.body
    else
      get response.headers['location']
    end
  end
end

puts RequestWithRedirect.new.get('http://gb.ru')
