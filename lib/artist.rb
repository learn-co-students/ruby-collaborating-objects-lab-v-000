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
    artist = Artist.new(name)
    artist.save
    return artist
  end

  def self.find_by_name(name)
    Artist.all.each do |artist|
      if artist.name == name 
          return artist
        end
    end
    return false
  end

  def self.find_or_create_by_name(name)
     if self.find_by_name(name)
        self.find_by_name(name)
      else
        self.create_by_name(name)
      end
  end

  def print_songs
    songs.each do |song|
      puts "#{song.name}"
    end
    
  end
#----------------------------------------

#--------------Song methods--------------
  @@song_count = 0

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  # def songs
  #   @songs
  # end

  # def add_song_by_name(title)
  #   song = Song.new(title)
  #   song.artist = self
  #   @songs << song
  #   @@song_count += 1
  #   #binding.pry
  # end

  # def self.song_count
  #   @@song_count
  # end
#----------------------------------
  
end #of Artist class