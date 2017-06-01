class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(title)
    song = Song.new(title)
    song.artist = self
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def self.find_or_create_by_name(name)
    find = @@all.detect{|artist| artist.name == name}
    if find == nil
      self.new(name)
    else
      find
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
