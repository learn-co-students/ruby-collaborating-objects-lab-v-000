require 'pry'

class Song 

	attr_accessor :name, :artist, :genre 

	def initialize(name)
		@name = name
	end

	def artist_name(artist_name)
		self.artist = Artist.find_or_create_by_name(artist_name)
	end

	def self.new_by_filename(song_info)
		song_features = song_info.split(" - ")
		new_song = Song.new(song_features[1])
		new_song.artist = new_song.artist_name(song_features[0])
		new_song.artist.add_song(new_song.name)
	end 

end	