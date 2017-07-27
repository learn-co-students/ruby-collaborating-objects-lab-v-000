class Artist
	require 'pry'
	attr_accessor :name, :songs
	@@all = []
	
	def initialize (name)
		@name = name
		@songs = []	
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

	def	self.find_or_create_by_name(n)
		artist = self.all.detect{|s|s.name==n} 
			if artist == nil
				artist = Artist.new(n)
				artist.save 
			end
		artist
	end

	def print_songs
		@songs.each do |s| puts s.name 
		end	
	end

	
end