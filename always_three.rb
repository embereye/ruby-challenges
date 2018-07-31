#Always 3 Ruby script

# define the method, do the math
def always_three_method(usernumber)
usernumber = (((((usernumber + 5) * 2)- 4)/ 2)- usernumber).to_s
end

# Ask the user for a number

puts "Give me a number:"

# Get the user's number with gets, use to_i to convert it to an integer and set it to a variable

number = gets.to_i





#call the method and put it

puts "Always #{always_three_method(number)}"

#Old process
#Always 3 Ruby script

# 1. Ask the user for a number

#puts "Give me a number:"

# 2. Get the user's number with gets, use to_i to convert it to an integer and set it to a variable

#original_number = gets.to_i

# 3. set the final number and the first number as equals at this point so you can keep the original number to use later

#number = original_number

# 4. add 5

#number+=5

# 5. multiply by 2

#number*=2

# 6. subtract 4

#number-= 4

# 7. divide by 2

#number/= 2

# 8. subtract the original

#number-=original_number

# 9. show the final number
#puts "Always #{number}"
