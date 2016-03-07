
class Song

	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(file)
		file_array = file.split(" - ")
		song_artist = file_array[0]
		song_name = file_array[1]

		new_song = Song.new(song_name)
		new_song.artist = new_song.artist_name(song_artist)
	  
		new_song
	end

	def artist_name(name)
		Artist.find_or_create_by_name(name)
	end
end