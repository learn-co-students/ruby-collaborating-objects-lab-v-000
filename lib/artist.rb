require 'pry'

class Artist

	attr_accessor :name
	
	@@all = []
	
	def initialize(name)
		@name = name
		@songs = []
	end
	
	def add_song(song)
		@songs << song
	end
	
	def songs
		@songs
	end
	
	def self.all
		@@all
	end
	
	def save
		self.class.all << self
	end
	
	def self.find_by_name(name)
		self.all.detect do |artist|
			artist.name == name
			artist
		end
	end
	
	def self.create_by_name(name)
		artist = self.new
		artist.name = name
		artist
	end
	
	def self.find_or_create_by_name(name)
		if self.find_by_name(name)
			self.find_by_name(name)
		else
			self.create_by_name(name)
		end
	end
	
	def print_songs
		@songs.each do |song|
			puts song.name
		end
	end
end
