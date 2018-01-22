class Artist

    @@all = []

	attr_accessor :songs, :name, :song


	def initialize(name)
		@name = name
		@songs = []
	end

  	def add_song(song)
    	@songs << song
  	end

	def self.find_or_create_by_name(name)
		if !(self.all.find {|artist| artist.name == name })
			artist = self.new(name)
			artist.save
			artist
		else 
			self.all.find {|artist| artist.name == name}
		end
	end

    def save
    	@@all << self
    end

    def self.all
    	@@all
    end

	def print_songs
		@songs.each {|song| puts song.name}
	end

end
