#require "pry"

class Song

	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(file)
    	#binding.pry
		artist = file.split(/\s-\s/)[0]
		song = file.split(/\s-\s/)[1]
		new_song = self.new(song)
    	new_song.artist_name = artist
    	new_song
	end

  	def artist_name=(name)
   		self.artist = Artist.find_or_create_by_name(name)
   		artist.add_song(self)
  	end

end
