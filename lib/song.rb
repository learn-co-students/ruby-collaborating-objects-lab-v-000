class Song

	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def artist_name=(name)
	  if (self.artist.nil?)
		  self.artist = Artist.find_or_create_by_name(name)
	  else
		  self.artist.name = name
	  end
  end

	def self.new_by_filename(filename)
	  song_name = filename.split(" - ")[1]
	  new_song = self.new(song_name)
	  new_song.artist_name = filename.split(" - ")[0]
  	new_song
  end

end
