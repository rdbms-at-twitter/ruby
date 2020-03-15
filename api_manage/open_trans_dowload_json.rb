require 'net/http'
require 'uri'
require 'json'

 # https://www.odpt.org/
 File.open("Tokyo_Bus_Transportation_Schedule.json", 'w') do |file|
 uri = URI.parse('https://api.odpt.org/api/v4/odpt:BusTimetable?odpt:operator=odpt.Operator:Toei&acl:consumerKey=xxxxxxxxxxxxxx Put your Key ##############')
 json = Net::HTTP.get(uri) # CALL API WITH NET::HTTP
 result = JSON.parse(json) # Parge JSON to RUBY ARRAY
 str = JSON.dump(result, file)
 puts result
 end
