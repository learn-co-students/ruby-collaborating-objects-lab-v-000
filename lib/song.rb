class Song
	attr_accessor :name
	attr_accessor :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		info = filename.split(" - ")

		new_song = self.new(info[1])
		artist = Artist.new(info[0])
		artist.add_song(new_song)
		new_song.artist = artist

		new_song
	end
end
