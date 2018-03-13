class Artist
  # extend Lovebot
  # include Lovebot
  attr_accessor :name, :songs, :song
  @@all = []
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def reset_all
    self.all.clear
  end
  def self.find(name)
    self.all.detect{|artist| artist.name == name}
  end
  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end
  def count
    self.all.size
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end
end
