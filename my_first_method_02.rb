def my_first_method (num1, num2)
	puts "#{num1} + #{num2} = #{num1.to_i + num2.to_i}"
end

puts"please enter num1"
num1= gets.chomp
puts "please enter num2"
num2= gets.chomp
my_first_method(num1, num2)