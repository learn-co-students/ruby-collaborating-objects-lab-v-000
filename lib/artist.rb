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
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find_or_create_by_name(name)
		@@all.each do |artist|
			return if artist.name == name
		end
		new_artist = Artist.new(name)
		new_artist.save
		new_artist
	end

	def print_songs
		@songs.each do |song|
			puts song.name
		end
	end
end