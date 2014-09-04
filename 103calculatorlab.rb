# 2. Add ability to divide
def calculate(operation, num1, num2)
	if operation == "add"
		add(num1, num2)
	elsif operation == "subtract"
		subtract(num1, num2)
	elsif operation == "divide"
		divide(num1, num2)	
	elsif operation == "multiply"
		multiply(num1, num2)	
	end
end

def operand(operation)
	if operation == "add"
		return "+"
	elsif operation == "subtract"
		return "-"
	elsif operation == "divide"
		return "/"
	elsif operation == "multiply"
		return "*"
	end
end

def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end
		
def divide(num1, num2)
	num1 / num2
end

def multiply(num1, num2)
	num1 * num2
end

puts "Hey! I can help you calculate numbers!  First, will we add, subtract, divide, or multiply?"
	operation = gets.chomp

puts "Ok, give me the first number"
	num1 = gets.chomp

puts "Now, give me the second number"
	num2 = gets.chomp

# Below line allows the operand to change from add to subtract.  
# The squigglies keep the string/integer from getting mixed.

puts "The answer to #{num1} #{operand(operation)} #{num2} = #{calculate(operation, num1.to_i, num2.to_i)}"
