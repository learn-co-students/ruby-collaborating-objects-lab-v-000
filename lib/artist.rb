require 'pry'

class Artist

	attr_accessor :name
	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def songs
		@songs
	end

	def add_song(song)
		@songs << song
		song.artist = self
	end

	def self.all
		@@all << self
	end

	def save
		self.class.all << self
	end

	def self.find_or_create_by_name(name)
		result = self.all.detect {|song| song.name == name}
		if result == nil
			artist = self.new(name)
			artist.save
			artist.name = name
			artist
		else
			result
		end
	end

	def print_songs
		self.songs.each {|song| puts "#{song.name}"}
	end

	# binding.pry


end