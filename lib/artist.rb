require 'pry'
class Artist
	attr_accessor :name, :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		@@all << self
	end

	def add_song(song)
		song.artist = self
		@songs << song
	end

	def save
		@@all << self
	end

	def self.all 
		@@all
	end

	def self.find_or_create_by_name(name_string)
		result = @@all.find {|artist| artist.name == name_string}
		if result.nil?
			Artist.new(name_string)
		end
	end

	def print_songs
		@songs.each do |f|
			puts f.name
		end
	end
end