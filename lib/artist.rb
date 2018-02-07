class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def songs
    @songs
  end
  def self.all
    @@all
  end
  def save
    @@all << self
  end
  def add_song(song)
    if song.is_a?(Song)
      @songs << song
    end
  end
  def self.find(name)
    self.all.find {|x| x.name == name}
  end
  def self.create(name)
    a = self.new(name)  ## refractor with .tap
    a.save
    a
  end
  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end
  def print_songs
    self.songs.each do |x|
      puts x.name
    end
  end
end
