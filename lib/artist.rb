class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def all
    @all
  end

  def self.find_or_create_by_name(name)
    if @@all.find(name)
      @@all.find(name)
    else
      Artist.new(name)
    end
  end

  def print_songs
    puts @songs
  end

end
