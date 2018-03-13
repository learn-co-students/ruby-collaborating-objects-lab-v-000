class Artist

	attr_accessor :name, :song

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def songs 
		@songs
	end

	def save
		@@all << self
		self
	end

	def self.all
		@@all
	end

	def add_song(song_instance)
		@songs << song_instance
	end

	def self.find_or_create_by_name(name)
    	@@all.find {|i| i.name == name} || self.new(name).save
  	end

  	def print_songs
    	@songs.each { |i| puts i.name }
  	end

end
