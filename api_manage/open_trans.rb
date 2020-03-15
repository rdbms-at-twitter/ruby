require 'net/http'
require 'uri'
require 'json'

# https://www.odpt.org/
uri = URI.parse('https://api.odpt.org/api/v4/odpt:BusTimetable?odpt:operator=odpt.Operator:Toei&acl:consumerKey=########## Put Your Key ############')
json = Net::HTTP.get(uri) #CALL API WITH NET::HTTP 
result = JSON.parse(json) #Parge JSON to RUBY ARRAY
puts result
