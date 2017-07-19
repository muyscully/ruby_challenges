class Parent
	def set_name= (name)
		@name = name
	end

	def get_name
		return @name
	end

	def set_birthdate= (birthdate)
		@birthdate = birthdate
	end

	def get_birthdate 
		return @birthdate
	end
end

class Baby < Parent


	def favorite_songs
		@songs= []
	end

	def get_favorite_songs
		return @songs
	end

	def add_favorite_song_to_list= (song)
		@songs.push(song)
	end

	def make_sound
		return "ooooooooo"
	end

end

class Teenager <Parent
	def set_college_choice= (college_choice)
		@college_choice = college_choice
	end

	def get_college_choice
		return @college_choice
	end

	def set_summer_job= (summer_job)
		@summer_job = summer_job
	end

	def get_summer_job 
		return @summer_job
	end
end

baby_bobby = Baby.new
baby_bobby.set_name = "Bobby"
baby_bobby.set_birthdate = "September 11, 2015"
baby_bobby.favorite_songs
baby_bobby.add_favorite_song_to_list = "Snuggle Puppy"
baby_bobby.add_favorite_song_to_list = "Pout Pout Fish"

teen_sandra= Teenager.new
teen_sandra.set_name = "Sandra"
teen_sandra.set_birthdate = "July 29 1981"
teen_sandra.set_summer_job = "apple cart"
teen_sandra.set_college_choice = "Santa Monica College"

puts "My name is #{baby_bobby.get_name} and I was born on #{baby_bobby.get_birthdate} and here are my favorite songs: #{baby_bobby.get_favorite_songs}"

puts "#{baby_bobby.make_sound}. Here is my favorite song: #{baby_bobby.get_favorite_songs[0]}"

puts "My name is #{teen_sandra.get_name} and this summer I'm working at the #{teen_sandra.get_summer_job}"

puts "#{teen_sandra.get_birthdate} is Sandra's Birthday"
