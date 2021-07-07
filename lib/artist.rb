require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def add_song_by_name(title)
    song = Song.new(title)
    song.artist = self
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|x| x.name == name}
      self.all.detect {|x| x.name == name}
    else
      self.new(name)
    end


    #self.all.find{|x| x.name == name || Artist.new(name)}
  end

  def print_songs
    self.songs.each {|x| puts x.name }
  end



end
