
#Numerology Ruby script

#Get the birthdate and assign to varaiable
def determine_birthdate
  #1. Ask user for their birthdate

puts "What is your birthdate? Please write it like this: MMDDYYYY"

# 2. Use gets to get birthdate to a variable

birthdate = gets

end

#3. use array syntax to access each number in the birthdate and convert it to an integer AND add them all together
def birthdate_path_method
  birthdate = determine_birthdate

  birthdate_path = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i

#4. Convert the number back to a string. Use array syntax to access each number again and add them together

  birthdate_path = birthdate_path.to_s
  birthdate_path = birthdate_path[0].to_i + birthdate_path[1].to_i

#5 check if the number is a single digit, if not, redo previous steps once more

  if birthdate_path > 9
      birthdate_path = birthdate_path.to_s
      birthdate_path = birthdate_path[0].to_i + birthdate_path[1].to_i
  end
end
#6 do if else to determine message.

def message
  number = birthdate_path_method
if (number == 1)
    puts "One is the leader. The number one indicates the ability to stand alone and is a strong vibration. Ruled by the Sun."
  elsif (number == 2)
    puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
  elsif (number == 3)
    puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
  elsif (number == 4)
    puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
  elsif (number == 5)
    puts "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
  elsif (number == 6)
    puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
  elsif (number == 7)
    puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
  elsif (number == 8)
    puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
  elsif (number == 9)
    puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
  else
    puts "Uh oh! Your birth path number is not 1-9!"
  end
end

#call message method
message
