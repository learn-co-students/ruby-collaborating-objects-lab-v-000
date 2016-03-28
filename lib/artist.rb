class Artist
	attr_accessor :name, :song, :artist, :songs

	@@all = []

	def initialize(name)
		@name = name
	end

	def songs
		
	end

	def save
		artist = self.new
		@@all << artist
		@@all
	end

	def self.find_or_create_by_name(name)
		if @@all.include?(name)
			@@all.detect {|artist| artist.name == name}
		else
			new_artist = self.new(name)
			@@all << new_artist
			new_artist
		end
	end

	def print_songs
		
	end
end