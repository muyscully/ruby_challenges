def always_3
	puts "Please enter a number and I will make it into 3!!"
	numberEntered= gets
	puts "The answer is #{ ((((numberEntered.to_i + 5) * 2) -4)/2)- numberEntered.to_i}"
end

always_3
