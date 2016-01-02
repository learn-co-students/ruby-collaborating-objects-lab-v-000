class Artist
	def self.all
		@@all
	end
	attr_accessor :name
	attr reader :songs
	@@all=[]
	def initialize(name)
		@name = name
		@songs = []
	end
	
	def add_song(song)
		@songs << song
	end
	
	def save
		@@all << self
	end
	
	def self.find_or_create_by_name(new_name)
		if !@@all.detect { |x| x.name == new_name }.nil?
			@@all.detect { |x| x.name == new_name }
		else
			name = self.new(new_name)
			name.save
			name
		end
	end
	
	def print_songs
		@songs.each { |x| puts x}
	end
end