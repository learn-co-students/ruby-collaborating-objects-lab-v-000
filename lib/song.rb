class Song
	require 'pry'
	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(file_name)
		#binding.pry
		song = Song.new(file_name.split(" - ")[1])
		a_name = file_name.split(" - ")[0]
		song.artist_name = a_name
		song
	end

	def artist_name=(artist_name)
		#binding.pry
		self.artist = Artist.find_or_create_by_name(artist_name)
		#binding.pry
		artist.add_song(self)
		
	end

end