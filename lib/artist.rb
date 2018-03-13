class Artist
	attr_accessor :name, :song, :artist, :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		@songs << song
	end

	def songs
		self.songs = @songs
	end

	def self.all
		@@all
	end

	def save
		self.class.all << self
	end

	def self.find_or_create_by_name(name)
		@@all.find do |artist|
			if artist.name == name
				artist
			else
				new_artist = self.new(name)
				new_artist.save
				new_artist
			end
		end
	end

	def print_songs
		self.songs.each do |song|
			puts "#{song.name}"
		end
	end
end