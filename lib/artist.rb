
class Artist
  attr_accessor :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @songs = Array.new

  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    songs << song
  end

  def save
    @@all << self
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  # def self.create
  #   artist = self.new #or song = new
  #   artist.save #"@@all << song" works too
  #   artist
  # end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.save
    artist.name = name
    artist
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create_by_name(name)
  end

    # if self.name != name
    #   self.new(name)
    # else
    #   self.all.find {|a| a.name == name}
    # end

  def print_songs
    songs.each {|song| puts song.name}
  end

end
