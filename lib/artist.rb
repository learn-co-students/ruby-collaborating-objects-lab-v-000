class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def self.all
  	@@all
  end

  def save
  	@@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
    	self.find(name) 
    else self.create(name)
    end
  end

  def self.find(name)
    self.all.detect {|artist| artist.name == name }
  end

  def self.create(name)
    new_artist = self.new(name)
    new_artist
  end

  def print_songs
    songs.each {|print_songs| puts print_songs.name}
  end


end
