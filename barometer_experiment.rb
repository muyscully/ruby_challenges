#http://www.rubydoc.info/gems/barometer/0.8.0/toplevel
require 'barometer'
forecast_counter = 0;

barometer = Barometer.new("96704")
weather = barometer.measure


#list_of_methods = (weather.forecast).methods

puts weather.current.temperature.f
puts weather.today.high.f
puts weather.today.low.f
puts weather.tomorrow.high.f
puts weather.tomorrow.low.f


forecast_array = weather.forecast.entries

time = Time.now
date = Date.today


weather_of_time = weather.for(time)
puts "weather_of_time #{time}"
puts weather_of_time.high.f
puts weather_of_time.low.f


puts "Forecast for today and the next 5 days: \n"
counter = 0

while (counter<forecast_array.length)
	new_date = (date + counter)
	puts "#{new_date.strftime("%A, %m/%d/%y")} is #{forecast_array[counter].icon} with a temperature of " 
	puts "HIGH: #{forecast_array[counter].high.f}  LOW: #{forecast_array[counter].low.f}"
	puts "\n"
	counter += 1
end

#puts weather.forecast.methods
puts weather.current.condition
#puts weather.current.methods
#puts weather.today.methods
puts weather.today.condition
puts weather.today.sun
puts weather.today.attributes # gets all of the info about today's weather. high, low, sunrise, set, condition
puts weather.today.icon
puts weather.tomorrow.attributes
puts weather.pressure
puts weather.heat_index.f

#puts weather.today.condition

#while (forecast_counter < forecast_array.length)

#	puts "#{(forecast_array[forecast_counter]).high.f} HIGH #{(forecast_array[forecast_counter]).low.f} LOW"
#	forecast_counter =+1
#end

#puts "#{weather.forecast.entries[0].high}" this syntax works