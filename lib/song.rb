require 'pry'
class Song
	#has a name, belongs to an artist
	attr_accessor :name, :artist, :filename

#initialized with an argument of a name
	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		song_artist = filename.split(" - ")[0]
		song_name = filename.split(" - ")[1]
		song = self.new(song_name)
		artist = Artist.find_or_create_by_name(song_artist)
		song.artist = artist
		song
	end

end