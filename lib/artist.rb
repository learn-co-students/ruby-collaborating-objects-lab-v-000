class Artist

  attr_accessor :name, :songs, :artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if self.name.nil?
      name = Artist.new(name)
    else
      self.name = name
    end

  end


  def print_songs
    @songs.each {|e| print e.name}
  end

  def songs
    @songs.each {|e| print e}
  end
end
