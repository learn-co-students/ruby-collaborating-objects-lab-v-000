class Artist
	attr_accessor :name
	
	@@all = []

	def self.all
		@@all
	end

	def initialize(name)
		@name = name
		@songs = []
		self.save
	end

	def add_song(song)
		@songs << song
	end

	def songs
		@songs
	end

	def save
		@@all << self
	end

	def self.find_or_create_by_name(name)
		if @@all.detect{|artist| artist.name == name} == nil
			artist = self.new (name)
			artist.name = name
			artist 
		else
			@@all.detect{|artist| artist.name == name}
		end
	end

	def print_songs
		@songs.each {|song| puts song.name}
	end
end