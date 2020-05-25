class Artist
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end


  def songs
    @songs
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    if !(self.all.any?{|artist| artist.name == name})
      artist = self.new(name)
    else
      self.all.detect{|artist| artist.name == name}
    end
  end


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def print_songs
    @songs.each do |song|
      name = song.name
      puts name
    end
  end

end

