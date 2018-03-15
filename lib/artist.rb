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
    @songs << song
  end
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  def self.find_or_create_by_name(name)
    self.all.detect {|a| a.name == name} ||  self.new(name)
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end

end
