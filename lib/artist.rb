require 'pry'

class Artist
	attr_accessor :name, :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		@songs << song
	end

	def save
		self.class.all << self
	end

	def self.all
		@@all
	end

	def self.create_by_name(name)
		artist = self.new(name)
		artist.save
		artist
	end

	def self.find_by_name(name)
		Artist.all.detect { |artist| artist.name==name }
	end

	def self.find_or_create_by_name(name)
		found = Artist.find_by_name(name)
		found == nil ? Artist.create_by_name(name) : found
	end

	def print_songs
		@songs.each { |song| puts song.name }
	end
		
end

#artist_1 = Artist.create_by_name("Michael Jackson")
#binding.pry
#artist_1 = Artist.find_or_create_by_name("Michael Jackson")
#binding.pry
#artist_2 = Artist.find_or_create_by_name("Michael Jackson")