class Artist
	attr_accessor :name, :songs

	@@all = []


	def initialize(name)
		@name = name
		@songs = []
		@@all << self
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
		if @@all.detect {|artist| artist.name == name } == nil
			artist = self.new (name)
			artist.name = name
			artist
		else
			@@all.detect {|artist| artist.name == name }
		end
	end

	def print_songs
		@songs.each {|song| puts song.name}
	end





end