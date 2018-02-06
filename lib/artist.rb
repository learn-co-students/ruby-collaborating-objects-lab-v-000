require 'pry'

class Artist
	attr_accessor :name, :songs

	@@all = []

	def initialize(name)
		@name=name
		@songs = []
		
	end

	def add_song(song)
		song.artist = self
		@songs << song
	end

	def save
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find_or_create_by_name(name)

		if @@all.size == 0
			new_artist = self.new(name)
			new_artist.save
			return new_artist
		end

		@@all.each do |artist| 
			if artist.name == name
				return artist
			else 
				new_artist = self.new(name)
				new_artist.save
				return new_artist
			end
		end
	end

	def print_songs
		@songs.each {|song| puts song.name}
	end

end




