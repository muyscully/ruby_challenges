puts 'what is the weather like today? sunny, hot, cold, rain or overcast?'
weather=gets.chomp

puts "you have entered #{weather} thank you very much! =)"


case weather
	when "sunny"
		puts "it's nice and sunny. Wear a dress."
	when "hot"
		puts "put a fork in me, I'm done. Swimsuit time!"
	when "cold"
		puts "I'm too cold to do anything. Scarf time."
	when "rain"
		puts "It's raining, time for a hat"
	when "overcast"
		puts "It's overcast, time for a coat"
	else
		puts "I don't get what you said..."

	end 