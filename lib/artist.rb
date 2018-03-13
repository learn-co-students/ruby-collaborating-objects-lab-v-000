require 'pry'
class Artist 
	attr_accessor :name, :songs
    @@all = []

	def initialize(name)
		@name = name 
		@songs = [] 
	end

    def add_song(song_name)
        self.songs << song_name
    end

    def self.all
    	@@all
    end
 
    def save
    	 @@all << self
    end

	def self.find_or_create_by_name(name)
		if artist_fund = @@all.find{|artist| artist.name == name}
           artist_fund 
		else
		  new_artist = Artist.new(name)
		  @@all << new_artist
		  new_artist 
		end
	end

	def find(name)
		@@all.each{|artist| artist.name == name}
	end

	def create_by_name(name)
		new_artist = self.new(name)
		@all << new_artist
		new_artist
	end

	def print_songs
		self.songs.each{|song| puts "#{song.name}"}
	end
end



