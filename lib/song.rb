require 'pry'

class Song

	attr_accessor :artist, :name

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		name_bits = filename.split(' - ')
		artist = name_bits[0]
		name = name_bits[1]
		song = Song.new(name)
		artist = Artist.find_or_create_by_name(artist)
		song.artist = artist
		song 
	end

end