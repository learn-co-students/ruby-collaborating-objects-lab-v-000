class Song
	attr_accessor :name, :artist

	def initialize(name)
		@name = name
		@artist = artist
	end

	def artist_name=(name)
		artist = Artist.find_or_create_by_name(name)
		song.artist = artist
	end
end