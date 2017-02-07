class Artist
attr_accessor :name
@@all = []

def initialize(name)
	@name = name
	@songs = []
end

def add_song(song)
	@songs << song
end

def self.all
	@@all
end

def songs
	@songs
end

def save
	self.class.all << self
end

def self.find_or_create_by_name(name)
	if self.find_by_name(name) == nil
		self.create_by_name(name)
	else
		return self.find_by_name(name)
	end
end

def self.create_by_name(name)
	self.new(name).tap {|artist| artist.save}
end

def self.find_by_name(name)
	self.all.detect {|i| i.name == name}
end

def print_songs
	songs.each {|song| puts song.name}
end



end
