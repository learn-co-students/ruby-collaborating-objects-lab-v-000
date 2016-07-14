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
		song.artist = self

	end

	def self.all
		@@all
	end

	def save
		@@all << self
	end

	def self.find_or_create_by_name(name)
		@@all.detect do |artistname|
			if artistname.name == name
				artistname
			else
				self.new(name)
			end
		end


	end

	def print_songs
		@songs.each do |song|
			puts song.name
		end
	end

end