require "pry"
class Artist 
  
  attr_accessor :name, :song, :artist
  
  @@all = []
  
  def initialize(name = @name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def add_song(song = @song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    if self.all.find {|artista| artista.name == name} == nil
      self.new(name)
      else
        self.all.find {|artista| artista.name == name}
      end
    end

  def print_songs
    self.songs.each do |item|
      puts item.name
    end
  end
end
