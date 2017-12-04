class Artist
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    @songs
    #Song.find_by_artist(self)
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
    save
    #song.artist = self
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end

=begin
require 'pry'

class Artist

  attr_accessor :name
  @@all = []
  def initialize(name)
    @name=name
    @songs = []
  end

  def songs
   @songs
    #Song.find_by_artist(self) #@songs
  end

  def save
    #binding.pry
    @@all << self if @@all.detect { |i| i == self } == nil
  end

  def add_song(song)
    @songs << song
    save
    #song.artist = self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    #@@all.detect(name) == nil ? name = Artist.new(name) : self
    if @@all.detect {|i| i.name == name } == nil
      name = self.new(name)
    else
      self
    end
    #binding.pry
  end

  def print_songs
    @songs.each {|r| print "#{r.name}\n"}
  end

end
=end
