require 'pry'
class Artist
  attr_accessor :name, :songs
  
  

#----------Artist methods-----------------
  @@all = []
  
  def self.all
    @@all
  end

  def save
    @@all << self
  end
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.create_by_name (name)
    @name = self.new(name)
    self.save
  end

  def self.find_by_name(name)
    self.all.each do |artist|
      if artist.name == name 
          #binding.pry
          return artist
        end
    end
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) == [] ? self.create_by_name(name) : self.find_by_name(name)
    #binding.pry
  end
#----------------------------------------

#--------------Song methods--------------
  @@song_count = 0

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def songs
    @songs
  end

  def add_song_by_name(title)
    song = Song.new(title)
    song.artist = self
    @songs << song
    @@song_count += 1
    #binding.pry
  end

  def self.song_count
    @@song_count
  end
#----------------------------------
  
end #of Artist class