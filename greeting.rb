def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def who_to_greet 
	puts "Please enter name of person to greet"
	person= gets.chomp
end
 
def greeting
	persons_name = who_to_greet
	current_hour = determine_current_hour
	if (current_hour > 3 && current_hour < 12) 
		time = "morning" 
	
	elsif (current_hour > 12 && current_hour < 18) 
		time = "afternoon" 

	elsif (current_hour > 18 || current_hour < 2)
		time = "evening"
	end
	puts "Good #{time}, #{persons_name.capitalize}!"
end

greeting
