require 'pry'
class Song
	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def artist_name=(artist)
    	artist_obj= Artist.find_or_create_by_name(artist)
    	artist_obj.add_song(name)
    	self.artist = artist_obj
    	
  	end

  	
	
	def self.new_by_filename(filename)
		temp_song= filename.split(" - ")[1]
		song= self.new(temp_song)
		song.artist = filename.split(" - ")[0]
		song.artist_name= song.artist
		#binding.pry
		song
		
	end
end