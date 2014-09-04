#3. Add ability to accept math symbols

#   Below, I added Compound Conditions by using OR "||" so the calculator can accept symbols

def calculate(operation, num1, num2)
	if operation == "add" || operation == "+"
		add(num1, num2)
	elsif operation == "subtract" || operation == "-"
		subtract(num1, num2)
	elsif operation == "divide" || operation == "/"
		divide(num1, num2)	
	elsif operation == "multiply" || operation == "*"
		multiply(num1, num2)
	elsif operation == "exponify" || operation == "**"
		exponify(num1, num2)
	end
end

def operand(operation)
	if operation == "add" || operation == "+"
		return "+"
	elsif operation == "subtract" || operation == "-"
		return "-"
	elsif operation == "divide" || operation == "/"
		return "/"
	elsif operation == "multiply" || operation == "*"
		return "*"
	elsif operation == "exponify" || operation == "**"
		return "^"	
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

def exponify(num1, num2)
	num1 ** num2
end

puts "Hey! I can help you calculate numbers!"
puts "First, will we add, subtract, divide, multiply, exponify (find the exponent) or sqrt (find the square root)?"
	operation = gets.chomp

puts "Ok, give me the first number"
	num1 = gets.chomp

# I created a different arqument for the square root since it only needs one number.
# Currently, the square root will return as a float.

if operation != "sqrt"
	puts "Now, give me the second number"
		num2 = gets.chomp
	puts "The answer to #{num1} #{operand(operation)} #{num2} = #{calculate(operation, num1.to_i, num2.to_i)}"
elsif operation == "sqrt"
	puts "The answer to the square root of #{num1} = #{Math.sqrt(num1.to_i)}"
end

