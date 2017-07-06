require 'pry'

class Song

	attr_accessor :name, :artist
	#attr_reader :artist

	def initialize(name)
		@name = name
	end

	# def artist=(artist)
	# 	@artist = artist
	# end

	def self.new_by_filename(filename)
		# 'Michael Jackson - Black or White - pop.mp3'

		filename_array = filename.split(/\s-\s/)
		#puts filename_array
		song = self.new(filename_array[1])
		song.artist = Artist.find_or_create_by_name(filename_array[0])
		song.artist.add_song(song)
		song
	end
end