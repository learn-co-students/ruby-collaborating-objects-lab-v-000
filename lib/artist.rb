class Artist
  attr_accessor :name, :songs

  @@all = []

  def save
    @@all << self
    self
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    if @@all.find {|i| i.name == name}
      @@all.find {|i| i.name == name}
    else
      self.new(name).save
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
