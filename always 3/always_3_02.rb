puts "Please enter a number and I will make it into 3."
numberEntered= gets

puts " You've entered #{numberEntered}"

number_1= numberEntered.to_i

number_1+= 5
number_1*=2
number_1-=4
number_1/=2
number_1-= numberEntered.to_i

puts "The answer is #{number_1}"
