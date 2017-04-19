class Song
	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		artist, name = filename.split(" - ")
		song = self.new(name)
		song.artist = Artist.find_or_create_by_name(artist)
		song.artist.add_song(song)
		song
	end
end