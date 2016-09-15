class Artist 
	attr_accessor :name, :songs
    @@all = []

	def initialize(name)
		@name = name 
		@songs = [] 
	end

    def add_song(song)
    	song.artist = self
        @songs << song
    end

    def self.all
    	@@all
    end

    def save
    	 @@all << self
    end
    
	def songs
		@songs
	end

	def self.find_or_create_by_name(name)
		if name_fund = @@all.find{|artist| artist.name == name}
           name_fund 
		else
		  artist = Artist.new(name) 
		  @@all << artist
		  artist 
		end
	end

	def print_songs
		self.songs.each{|song| puts "#{song.name}"}
	end
end