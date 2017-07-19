

def always_3 (number)
	
	puts "The answer is #{ ((((number + 5) * 2) -4)/2)- number}"
end

puts "Please enter a number and I will make it into 3!!"
numberEntered=gets.to_i
always_3(numberEntered)
