require 'pry'
class Artist

  attr_accessor :name

  @@all = []

  @@names = []

  def self.names
    @@names
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|dt| dt.name == name}
      self.all.detect {|dt| dt == name}

    else
      name = Artist.new(name)
      name.save
      name
    end
  end



  def initialize(name)
    @name = name
    @songs = []
    end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def print_songs
   @songs.map {|song| puts song.name}
  end

end
