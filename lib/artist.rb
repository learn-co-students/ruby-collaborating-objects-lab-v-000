class Artist
	attr_accessor :name, :song, :artist

	@@all = []

	def initialize(name)
		@name = name
	end

	def songs
		
	end

	def save
		artist = self.new
		@@all << artist
	end

	def self.find_or_create_by_name(name)
		if @@all.include?(name)
			@@all.detect {|artist| artist == name}
		else
			new_artist = self.new(name)
			@@all << new_artist
			new_artist
		end
	end

	def print_songs
		
	end
end