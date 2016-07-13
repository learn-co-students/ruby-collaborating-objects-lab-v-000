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
		@@all
	end

	def save
		self.class.all << self
	end

	def self.find_or_create_by_name(name)
		if @@all.include?(name)
			@@all.detect {|song| song.name == name}
		else
			song = self.new
			song.save
			song
		end
	end

	def print_songs
		self.all.each {|song| puts "#{song.name}"}
	end

	# binding.pry


end