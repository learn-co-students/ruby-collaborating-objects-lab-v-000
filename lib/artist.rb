class Artist
#The Artist class will be responsible for either creating the artist
#(if the artist doesn't exist in our program yet) or finding the instance
#of that artist (if the artist does exist).
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

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      artist = Artist.new(name)
    end
  end

  def self.find(name)
    @@all.find {|artist| artist.name == name}
  end

  def print_songs
    @songs.map {|s| puts s.name}
  end

  def save
    self.class.all << self
  end

end
