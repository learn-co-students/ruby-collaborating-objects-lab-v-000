require 'pry'
class Artist

	attr_accessor :name
	@@all = []


def self.all
    @@all
  end
	
	def initialize(name)
		@name = name
		@songs = []
	end

	def songs
		@songs
		#binding.pry
	end

#
	def add_song(song)
		@songs << song
		#binding.pry
		#song.artist = self
		#binding.pry
	end

	def save
		@@all << self
	end

	def self.find_or_create_by_name(name)
		if self.all.detect {|a| a.name == name} == nil then
			artist = Artist.new(name)
			artist.save
			artist.name = name	
			artist
		else
			self.all.detect {|a| a.name == name}
		end
	end	

	def print_songs
		self.songs.collect do |song|
			puts song.name
		end
	end
	

end
