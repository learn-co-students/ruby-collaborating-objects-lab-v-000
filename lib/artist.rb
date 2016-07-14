require 'pry'

class Artist
	attr_accessor :name, :song

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		self.save
	end

	def songs
		@songs
	end

	def add_song(song)
		@songs << song

	end

	def self.all
		@@all
	end

	def save
		@@all << self
	end

	def self.create_by_name(name)
		artist = Artist.new(name)
		@@all << artist
		artist
	end

	def self.find_by_name(name)
		@@all.detect do |artist|
			name == artist.name
		end

	end

	def self.find_or_create_by_name(name)
		self.find_by_name(name) || self.create_by_name(name)
	end
		

	def print_songs
		@songs.each do |song|
			puts song.name.to_s
		end
	end

end