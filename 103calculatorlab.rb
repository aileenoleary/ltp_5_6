# 1. Print out the formula ("2+2=4")
def calculate(operation, num1, num2)
	if operation == "add"
		add(num1, num2)
	elsif operation =="subtract"
		subtract(num1, num2)
	end
end

def operand(operation, add, subtract)
	if operation == "add"
		puts "+"
	elsif operation == "subtract"
		puts "-"
	end
end

def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end
		

puts "Hey! I can help you do simple arithmetic numbers!  First, will we add or subtract?"
	operation = gets.chomp

puts "Give me the first number"
	num1 = gets.chomp

puts "Now, give me the second number"
	num2 = gets.chomp

# I am having trouble making the operand change from "+" or "-".
# This is so much easier: puts num1 + "+" + num2 + "=" + "#{answer}"
#  The current code below gives me a wrong number of arguments error msg

answer = calculate(operation, num1.to_i, num2.to_i)
	puts "The answer to " + num1 + operand + num2 + "=" + "#{answer}"
