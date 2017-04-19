class Artist
	attr_accessor :name
	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def self.all
		@@all
	end

	def save
		self.class.all << self
	end

	def self.create(name)
		artist = self.new(name)
		artist.save
		artist
	end

	def self.find_artist(name)
		self.all.detect { |artist| artist.name == name }
	end

	def self.find_or_create_by_name(name)
		self.find_artist(name) ? self.find_artist(name) : self.create(name)
	end

	def songs
		@songs
	end

	def add_song(song)
		self.songs << song
	end

	def print_songs
		self.songs.each { |song| puts song.name }
	end
end