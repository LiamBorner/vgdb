require 'uri'
require 'net/http'


url = URI("https://api-endpoint.igdb.com/games/?fields=name,rating&order=rating:desc")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["user-key"] = 'f10ea459179066b693557e93963f275c'
request["Cache-Control"] = 'no-cache'
request["Postman-Token"] = '12f727f6-f6a8-4858-853f-e8d49f68deab'

response = http.request(request)
puts response.read_body


# require 'unirest'
#
# class GameSearch
#
#   def self.get_games(name)
#     results = Unirest.get "api-endpoint.igdb.com/games/?fields=name,rating&amp;order=rating:desc",
#     header:{
#       "user-key" => <f10ea459179066b693557e93963f275c>,
#       "Accept" => "application/json"
#     }
#   end
# end
