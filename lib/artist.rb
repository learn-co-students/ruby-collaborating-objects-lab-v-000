class Artist
  attr_accessor :name, :song
  @@all = []
  @@names = []

  def initialize(name)
    @name = name
    @@names << name
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
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if !@@names.include?(name)
      self.new(name)
    else
      name
    end
  end

  def print_songs
    @songs.each {|index| puts index.name}
  end
end
