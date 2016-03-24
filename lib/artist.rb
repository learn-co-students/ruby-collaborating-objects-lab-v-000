class Artist
	attr_accessor :name, :song, :artist

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def save
		@@all << Self.new
	end


	def songs
		song = Song.new
		
	end

	def find_or_create_by_name(name)
		if @@all.include?(name)
			@@all.detect {|artist| artist.name==name}
		else
			@artist = self.new(name)
			@@all << @artist
		end
	end

	def print_songs
		@songs.each do |song|
			puts "#{song}"
		end
	end
end