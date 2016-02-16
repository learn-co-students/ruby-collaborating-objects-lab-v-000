class Song

	attr_accessor :name, :artist

	def initialize(name)
		@name = name		
	end

	def artist_name=(name)
		self.artist = Artist.find_or_create_by_name(name)
		Artist.add_song(self.name)
	end

	def self.new_by_filename(filename)
		rename = filename.split(" - ")
		song_artist = rename[0]
		song_name = rename[1]

		new_song = self.new(song_name)
		new_song.artist_name = song_artist
		new_song
	end

end