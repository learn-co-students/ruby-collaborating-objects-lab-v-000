class Song
	attr_accessor :name, :artist, :genre

	def initialize(name, genre="")
		@name = name
		@genre = genre
	end

	def artist_name(name)
		artist = Artist.find_or_create_by_name(name)
		self.artist = artist
	end

	def self.new_by_filename(file)
		artist, name, genre = file.split(" - ")
		genre.chomp!(".mp3")
		song = self.new(name, genre)
		song.artist_name(artist)
		song
	end
end

