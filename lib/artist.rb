
class Artist

	attr_accessor :name, :songs
		@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def self.all
		@@all
	end

	def save
		@@all << self
	end

	def self.create_by_name(name)
    artist = self.new(name)
  end

  def self.find_by_name(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

	def print_songs
		self.songs.each {|song| puts song.name}
	end

# instance method exists to tell the artist about its songs. Simply take the Song instance that is passed in as an argument and store it in a songs array with all the other songs that belong to the artist.

	def add_song(song) #arg is song instance
  	self.songs << song
  end
end
