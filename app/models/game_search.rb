require 'httparty'

class GameSearch
  include HTTParty
  base_uri "api-endpoint.igdb.com/"

  def game_search
    self.class.get('/games.json')
  end
end

game_search = GameSearch.new
puts game_search.game_search



#   require 'uri'
#   require 'net/http'
#
#   url = URI("https://api-endpoint.igdb.com/games/?search=hollow%20knight&fields=%2A")
#
#   http = Net::HTTP.new(url.host, url.port)
#
#   request = Net::HTTP::Get.new(url)
#   request["user-key"] = 'f10ea459179066b693557e93963f275c'
#   request["Cache-Control"] = 'no-cache'
#   request["Postman-Token"] = '60d5b3e5-5750-4a85-a68f-8b17a83a9595'
#
#   response = http.request(request)
#   puts response.read_body
# end
