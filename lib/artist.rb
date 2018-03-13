class Artist

  attr_accessor :name

  @@all = []	

  def initialize(name)
  	@name = name
  	@songs = []
  	save
  end

  def songs
  	@songs
  end

  def add_song(song)
  	self.songs << song
  end

  def save
  	Artist.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
   	if self.all.detect {|artist| artist.name == name}
   	else
  	  Artist.new(name)
  	end
  end

  def print_songs
  	self.songs.each {|song| puts song.name}
  end
end