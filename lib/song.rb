require 'pry'

class Song

	attr_accessor :name, :artist

	def initialize(name)
		@name = name		
	end

	def self.new_by_filename(filename)
		rename = filename.split(" - ")
		song_artist = rename[0]
		song_name = rename[1]
		
		
		new_song = self.new(song_name)
		new_song.artist_name=(song_artist)	
	end

	def artist_name=(name)
		#Turn the artists name as a string into an artist object
		self.artist = Artist.find_or_create_by_name(name)
		#Assign the song to the artist (Since an artist has many songs, we'll want to make this association)
		artist.add_song(self)
	end

end