require 'pry'

class Song
	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(file_names)
		
		if file_names.class == String
			arr = file_names.split(" - ")
			song = self.new(arr[1])
			song.artist_name(arr[0], song)
			song
		else
			file_names.each do |file|
				arr = file.split(" - ")
				song = self.new(arr[1])
				song.artist_name(arr[0], song)
				song
			end
		end
	end

	def artist_name(artist_name, song)
		artist = Artist.find_or_create_by_name(artist_name)
		artist.add_song(song)
	end

end