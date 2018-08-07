class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all = []
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

  def self.all
    @@all
  end
#iterate over @@all
#if the name of new artist == name on @@all
#find it
# if there's no name- > create a new instance.
  def self.find_or_create_by_name(name)
    self.all.find do |artist|
      if artist == name
        artist
      else
        name = self.new(name)
      end
    end
  end
end
