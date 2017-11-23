class Artist
  attr_accessor :name, :songs
  @@all = []
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

  def self.find_or_create_by_name(name)
    result = self.all.detect{|artist| artist.name == name}
    if result != nil
      self.new(name)
    else
      self
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

  def add_song(song)
    self.songs << song
  end
end
