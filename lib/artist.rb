class Artist

	attr_accessor :name, :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		self.songs << song
		song.artist = self
	end

	def self.all
		@@all
	end

	def save
		@@all << self
	end

	def self.find_or_create_by_name(name)
		artist = @@all.detect {|artist| artist.name == name}
		if artist.nil?
			return Artist.new(name)
		else
			return artist 
		end
	end

	def self.all_artists
		self.all.map {|artist| artist.name}
	end

	def print_songs
		song_array = self.songs
		song_array.each do |song|
			puts song.name
		end
	end

end