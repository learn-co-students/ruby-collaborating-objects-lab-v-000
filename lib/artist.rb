class Artist
	
	attr_accessor :name, :songs
	@@all = []
	
	def initialize(name)
		@name = name
		@songs = []
	end
	
	def add_song(song)
		song.artist = self
		@songs << song
	end
	
	def save
		@@all << self unless @@all.detect {|artist| artist.name == @name}
	end
	
	def self.all
		@@all
	end
	
	def self.find_or_create_by_name(name)
		artist = @@all.detect {|artist| artist.name == name}
		artist.nil? ? Artist.new(name) : artist
	end
	
	def print_songs
		@songs.each {|song| puts song.name}
	end
		
end