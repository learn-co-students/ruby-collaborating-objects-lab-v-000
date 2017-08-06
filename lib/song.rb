class Song
	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end
	
	##add song to artist, and the artist to the song, like a handshake/reciprocal action. adding logic to the setter
	def artist=(artist)
		@artist = artist
		@artist.add_song(self)
	end

	def artist
		@artist
	end

	def self.new_by_filename(item)
		data = item.chomp(".mp3").split(" - ")
		artist = data[0]
		title = data[1]
		song = Song.new(title)
		song.artist = Artist.find_or_create_by_name(artist)
		song
	end
end