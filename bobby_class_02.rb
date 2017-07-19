class Baby 

	def set_name (name)
		@baby_name = name
	end

	def get_name
		return @baby_name
	end

	def set_birthdate (birthdate)
		@baby_birthdate = birthdate
	end

	def get_birthdate 
		return @baby_birthdate
	end

	def favorite_songs
		@songs= []
	end

	def get_favorite_songs
		return @songs
	end

	def add_favorite_song_to_list (song)
		@songs.push(song)
	end

	def make_sound
		return "ooooooooo"
	end

end

baby_bobby = Baby.new
baby_bobby.set_name ("Bobby")
baby_bobby.set_birthdate ("September 11, 2015")
baby_bobby.favorite_songs
baby_bobby.add_favorite_song_to_list ("Snuggle Puppy")
baby_bobby.add_favorite_song_to_list ("Pout Pout Fish")



puts "My name is #{baby_bobby.get_name} and I was born on #{baby_bobby.get_birthdate} and here are my favorite songs: #{baby_bobby.get_favorite_songs}"

puts "#{baby_bobby.make_sound}"


