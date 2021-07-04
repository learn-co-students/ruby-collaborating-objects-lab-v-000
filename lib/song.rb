class Song 
	attr_accessor :name, :artist 

	def initialize(name)
		@name = name
	end 

	def artist_name=(artist_name) 
		self.artist = Artist.find_or_create_by_name(artist_name) 
		artist.add_song(self) 
	end 

	def self.new_by_filename(filename) 
		song_data = filename.split(" - ")
		song_name = song_data[1]
		song_artist = song_data[0]
		new_song = self.new(song_data) 
		new_song.name = song_name 
		new_song.artist_name = song_artist
		new_song
	end 

end 