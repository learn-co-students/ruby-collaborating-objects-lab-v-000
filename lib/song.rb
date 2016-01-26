class Song

	attr_accessor :name
	attr_reader :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		filename_array = filename.split(" - ")
		song = Song.new(filename_array[1])
		song.artist = Artist.new(filename_array[0])
		song
	end

	def artist=(artist)
		artist.songs << self unless artist.songs.include?(self)

		@artist = artist

	end


end

