require 'uri'
require 'net/http'

url = URI("https://api-endpoint.igdb.com/games/?search=hollow%20knight&fields=%2A")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["user-key"] = 'f10ea459179066b693557e93963f275c'
request["Cache-Control"] = 'no-cache'
request["Postman-Token"] = 'a223fbd7-c200-478f-bdd6-ac35a66bf8d1'

response = http.request(request)
puts response.read_body
