
def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def determine_username
  puts "What is your name?"
  name = gets

end

def greeting
	current_hour = determine_current_hour

	if(current_hour > 3 && current_hour < 12)
    time = "morning"
  elsif(current_hour > 12 && current_hour < 18)
    time = "afternoon"
  elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
  name = determine_username
	puts "Good #{time}, #{name.capitalize}!"
end
greeting





















## Old math method
#def math_method(num1,num2)

#  puts "The answer is: " + (num1 + num2).to_s

#end

#math_method(4,6)
