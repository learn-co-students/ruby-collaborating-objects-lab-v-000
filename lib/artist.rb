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

	def print_songs
		@songs.collect {|song| puts song.name}
	end
	
	def self.all
		@@all
	end
	
	def save
		@@all << self	
	end

	def self.find_by_name(this_name)
		self.all.detect{|artist| artist.name == this_name}
	end

	def self.create_by_name(this_name)
		artist = self.new(this_name)
		artist.save
		artist
	end

	def self.find_or_create_by_name(this_name)
		self.find_by_name(this_name) || self.create_by_name(this_name)
	end
end