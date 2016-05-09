require'pry'

class Artist

  attr_accessor :name, :artist, :songs, :all

    @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create(name)
    #self.new(artist)
    #save
    self.new(name).tap {|artist| artist.save}
  end


  def self.find_or_create_by_name(artist)
    if self.find(artist) == nil
      self.create(artist)
    else
      #self.name = artist
      self.find(artist)
    end
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end



end