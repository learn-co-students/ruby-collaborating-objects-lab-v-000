class Artist

	attr_accessor :name
	attr_reader :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def songs
		@songs
	end

	def save
		@@all << self
	end

	def add_song(song)
		@songs << song
	end

	def print_songs
		@songs.each {|song| puts song.name}
	end

	def self.all
		@@all
	end

	def self.find_or_create_by_name(name)
		found_artist = @@all.find {|artist| artist.name == name}
		if found_artist
			found_artist
		else
			found_artist = Artist.new(name)
			found_artist.save
			found_artist
		end
	end

end