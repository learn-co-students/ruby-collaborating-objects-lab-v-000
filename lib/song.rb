require 'pry'

class Song
	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		song = self.new(filename.split(" - ")[1])
		song.artist_name = filename.split(" - ")[0]
		song
	end

	def artist_name=(name)
		self.artist = Artist.find_or_create_by_name(name)
		artist.add_song(self)
	end

end