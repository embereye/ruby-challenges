puts "How are you? Answer good/bad"

answer = gets.chomp.downcase

while (answer.downcase == "good")
  puts "I love you. How are you? Answer good/bad"
  answer = gets.chomp.downcase
  puts "I still love you."
end
