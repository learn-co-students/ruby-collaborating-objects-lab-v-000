class Artist

  attr_accessor :name, :song

 @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    self.songs << song
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    self.new(name) unless self.all.find {|artist| artist.name == name}
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end
