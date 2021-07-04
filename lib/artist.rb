class Artist

	@@all = []

	attr_accessor :name


	def initialize(name)
		@name = name
		@songs = []
		

	end

	def self.all
		@@all 

	end

	
	def save
		self.class.all << self
	end

	def songs
		@songs
	end

	def add_song(song)
		self.songs << song

	end


	def self.find_or_create_by_name(name)
		if self.all.detect { |artist| artist.name == name}
		self.all.detect { |artist| artist.name == name}
    	else
	      artist = self.new(name)
	      artist.save
	      artist
    	end
    	
  	end

		def print_songs
		songs.each {|song| puts song.name}
		end


	
  	
  end