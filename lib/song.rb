require 'pry'
class Song

	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		splited_string = filename.split(" - ")
		song = self.new(splited_string[1])
		song.artist = Artist.find_or_create_by_name(splited_string[0])
		song.artist.add_song(song)
        song
	end

end


