class Song
  def set_name= (song_name)
    @name = song_name

  end

  def get_name
  	return @name
  end

  def set_artist= (artist_name)
    @artist = artist_name 
  end

  def get_artist
  	return @artist
  end

  def duration= (duration_time)
    @duration= duration_time
  end

  def get_duration
  	return @duration
  end

end

aSong = Song.new
aSong.set_artist= "tlc"
aSong.set_name= "waterfalls"
aSong.duration= "3:44"

puts "#{aSong.get_artist}'s big hit is #{aSong.get_name} and is #{aSong.get_duration} minutes long."


