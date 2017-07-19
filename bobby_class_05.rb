class Baby 

	attr_accessor :name, :birthdate, :songs

	def initialize()
		@songs = []
	end

	def add_favorite_song_to_list= (song)
		@songs.push(song)
	end

	def make_sound
		return "ooooooooo"
	end

end

baby_bobby = Baby.new
baby_bobby.name = "Bobby"
baby_bobby.birthdate = "September 11, 2015"
baby_bobby.add_favorite_song_to_list = "Snuggle Puppy"
baby_bobby.add_favorite_song_to_list = "Pout Pout Fish"

puts "My name is #{baby_bobby.name} and I was born on #{baby_bobby.birthdate} and here are my favorite songs: #{baby_bobby.songs}"

puts "#{baby_bobby.make_sound}"


