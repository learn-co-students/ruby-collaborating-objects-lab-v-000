require 'pry'
class Song
	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		title = filename.split(" - ")[1]
		artist_name = filename.split(" - ")[0]
		song = Song.new(title)
		artist = Artist.find_or_create_by_name(artist_name)
		artist_name
		binding.pry
	
	end


end