require 'pry'
class Artist
  
attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all = []
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
    @songs
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def find_or_create_by_name
    @@all.uniq
  end
  
  def self.find_or_create_by_name(new_artist)
    searchedArtist = @@all.find do |artist|
      artist.name == new_artist
    end
    
    if !searchedArtist
        new_artist = Artist.new(new_artist)
        @@all << new_artist
        return new_artist
    end
  end
  
  def print_songs
    @songs.each {|s| puts s.name}
  end
  
end