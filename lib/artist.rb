class Artist
	
	attr_accessor :name, :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(name)
		song = Song.new(name)
		@songs << song.name
	end

	def songs
		@songs 
	end

	def self.all
		@@all
	end

	def save
		@@all << self
	end

	def print_songs
		self.songs.each do |i|
			puts i.name
		end
	end

	def self.find_or_create_by_name(name)
		a = @@all.detect {|i| i.name == name}
		if a == nil
			b = self.new(name)
			b.save
			return b
		else
			return a 
		end
	end
end
