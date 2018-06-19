class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(new_song)
    songs << new_song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.select {|artist| return artist if artist.name == name}
    Artist.new(name)
  end 

  def print_songs
    @songs.each {|name| puts name }
  end 


end 