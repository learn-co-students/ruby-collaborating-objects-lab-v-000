class Artist 
	attr_accessor :name, :song, :artist

	@@all = []

	def initialize(name)
		@name = name 
		@songs = []
		@@all << self
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

	def self.all 
		@@all
	end

	def self.find_or_create_by_name(artist_name)
		artist_strings = []
		@@all.each do |artist|
			artist_strings << artist.name 
		end

		if artist_strings.include?(artist_name) == true
			place = artist_strings.index(artist_name)
			@@all[place]
		else 
			new_artist = Artist.new(artist_name)
		end
	end

	def print_songs
		all_songs = []
		@songs.each do |sing|
			all_songs << sing.name
		end 
		all_songs.each do |sing|
			puts sing	
		end
	end
end
