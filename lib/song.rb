class Song
	
	attr_accessor :name, :artist
	
	def initialize(name)
		@name = name
	end
	
	def self.new_by_filename(filename)
		array = filename.split(" - ")
		song = Song.new(array[1])
		song.artist = Artist.new(array[0])
		song.artist.add_song(song)
		song.artist.save
		song
	end
	
end