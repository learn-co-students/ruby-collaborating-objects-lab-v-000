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

	def add_song(title)
		song = Song.new(title)
		song.artist = self
		@songs << title
		song
	end

	def songs
		@songs
	end

	def print_songs
		@songs.each{|i| puts i.name}
	end

	def save
		@@all << self
	end

	def self.find_or_create_by_name(new_name)
		temp = @@all.find{|artist| artist.name == new_name}
		if temp == nil
			Artist.new(new_name)
			return @@all[-1]
		else
			return temp
		end
	end
end