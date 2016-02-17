require 'pry'

class Artist

	attr_accessor :name, :songs, :song

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		song.artist = self
		@songs << song
		#binding.pry
	end

	def self.all
		@@all
	end

	def save
		@@all << self
	end

	def self.find_or_create_by_name(name)
		@@all.detect do |artist|
			if artist == name
			artist
		else Artist.new(name)
			end
		end
	end

	def print_songs
		@songs.each do |name|
			puts name.name
		end
	end
end