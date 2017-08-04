require 'barometer'

puts "Enter the zip code, city name or country name you wish to know the weather"
user_input = gets.chomp

barometer = Barometer.new(user_input)
weather = barometer.measure
forecast_array = weather.forecast.entries
date = Date.today #date is a Date object with today method applied

puts "Currently it is #{weather.current.temperature.f}F"
puts "\n#{user_input} forecast for today and the next 5 days: \n"
counter = 0

while (counter<forecast_array.length)
	new_date = (date + counter) #adds 1 day. new_date is a new date object 
		if counter ==0
			print "TODAY " #if it's today, add this on 
		end
	puts "#{new_date.strftime("%A, %m/%d/%y")} is #{forecast_array[counter].icon} with a temperature of " 
	puts "HIGH: #{forecast_array[counter].high.f}F  LOW: #{forecast_array[counter].low.f}F"
	puts "\n"
	counter += 1
end

