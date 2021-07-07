class Artist
  attr_accessor :name, :songs
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

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|artist| artist.name == name}
      self.all.detect {|artist| artist.name == name}
    else
      artist = self.new(name)
    end
    # the below can work too but not sure if it will work for all cases compared with the way above
    #self.all.detect {|artist| artist.name == name} || artist = self.new(name)
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
