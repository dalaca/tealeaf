#Calculator App

#Ask for the numbers from user
puts 'Hello, welcome to the calculator program'

puts 'Please pick a number'
num1 = gets.chomp
puts''
puts 'Thanks, and another number'
num2 = gets.chomp
puts''
#Ask what the operator will be 
puts 'what operator do you wish to use 1) Addition 2) Subtraction 3) Division 4) Multiplication'
operator = gets.chomp

#Compute task
if operator == '1'
	answer = num1.to_i + num2.to_i
elsif operator == '2'
	answer = num1.to_i - num2.to_i
elsif operator == '3'
	answer = num1.to_f / num2.to_f
elsif operator == '4'
	answer = num1.to_i * num2.to_i
end

#Spit out number
puts "Your answer is #{answer}"
		


