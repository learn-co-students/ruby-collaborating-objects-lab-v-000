require 'pry'

class Artist
	attr_accessor :name, :songs

	@@all = []
	

	def initialize(name)
		@name = name
		@songs =[]
		@@all << self
	end

	def self.find_or_create_by_name(name)
		new_artist = self.all.detect do |artist_name| 
			artist_name.name == name
		end

		if new_artist
			return new_artist
		else
			new_artist = Artist.new(name)
		end
	end

	def print_songs
		self.songs.each {|song| puts "#{song.name}"}
	end

	def self.all
		@@all
	end

	def save
		@@all << self
	end

	def add_song(name)
		song= Song.new(name)
		songs << song.name

	end
	
	
end

