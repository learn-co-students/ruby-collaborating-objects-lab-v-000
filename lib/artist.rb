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
    	self.find(name) ? self.find(name) : self.create(name)
  	end

	def self.create(name)
    	self.new(name).tap {|artist| artist.save}
  	end

	def self.find(name)
    	self.all.find {|artist| artist.name == name }
  	end

	def print_songs
		@songs.each do |name|
			puts name.name
		end
	end
end