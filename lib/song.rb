class Song
	
	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		artist_name = filename.split(" - ")[0]
		title = filename.split(" - ")[1]
		song = Song.new(title)
		song.artist = Artist.find_or_create_by_name(artist_name)
		song
	end	

end
