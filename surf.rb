require 'open-uri'
raw_response= open('https://api.forecast.io/forecast/ad689e2d28bb4be68a609ba6baa277a7/57.1785,-2.0955,1466420400').read
require 'json'
response= JSON.parse(raw_response)

response['hourly']['data'].each_with_index do |item,index|
	swell=(item['windSpeed'] * 0.130399348).to_s
  puts 'At ' + index.to_s + 'h ' + 'swell should be ' + swell
end