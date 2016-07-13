class Song

	attr_accessor :name, :artist

	def initialize(name, artist)
		@name = name
		@artist = artist
	end

	def self.new_by_filename(filename)
		song = self.new(name)
		song.name = filename.split(" - ")[1]
		song.artist = Artist.new(name)
		song.artist.name = filename.split(" - ")[0]
	end

end