
def determine_birth_path (birthdate)
	
		bdayAdded= birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + 
					birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i +
					birthdate[6].to_i + birthdate[7].to_i   

		bdayAddedString= bdayAdded.to_s


		smallerNum = bdayAddedString[0].to_i + bdayAddedString[1].to_i
			if (smallerNum < 10)
				singleNum=smallerNum
			else
				smallerNum.to_s
				singleNum = smallerNum[0] + smallerNum[1]
			end		
return singleNum
end

def display_message(birth_path_number)

			case birth_path_number
				when 1
				return "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."

				when 2
				return "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."

				when 3
				return "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."

				when 4
				return "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."

				when 5
				return "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."

				when 6
				return "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."

				when 7
				return "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."

				when 8
				return "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."

				when 9
				return "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."

			else
				return "hmm... something went wrong"
			end
	
end

def birthdate_correct_format(birthdate)
	return (birthdate.length==8)
end

def numerology
	puts 'Please enter your birthday to get your birth number. It must be in this format MMDDYYYY'

	birthdate= gets.chomp

	if birthdate_correct_format(birthdate) == true
		birth_number= determine_birth_path (birthdate)
		message =  display_message(birth_number)
		puts "You have entered #{birthdate} and your birth path number is #{birth_number}. Your Message is: #{message}"
	else
		puts "Your birthdate format #{birthdate} is wrong. Please try again"
	end 

end



numerology