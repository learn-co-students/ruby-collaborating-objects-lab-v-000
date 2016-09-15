require 'pry'
class Song

	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		splited_file = filename.split(" - ")
		song = self.new(splited_file[1])
		song.artist = Artist.find_or_create_by_name(splited_file[0])
        song
	end

end