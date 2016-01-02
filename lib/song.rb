# require_relative "../lib/artist.rb"
# require_relative "../lib/mp3_importer.rb"
class Song
	attr_accessor :name, :artist, :songs, :artist_name
	def initialize(name)
		@name = name
	end

	def self.new_by_filename(file_name_string)
		full = file_name_string.split("-").map(&:strip)
		s = Song.new(full[1])
		s.artist_name = full[0]
		s
	end

	def artist_name=(name) 
		@artist = Artist.find_or_create_by_name(name)
	end

end
