require 'pry'

class Song

	attr_accessor :name
	
	def initialize(name)
		@name = name
	end

	def self.new_by_filename(name)
    	parts = name.split(" - ")
    	artist_name = parts[0]
	    title = parts[1]
	    genre = parts[2].chomp(".mp3")
	    song = Song.new(name)
	    song.artist = Artist.find_or_create_by_name(name)
	    song
  	end

	
end
