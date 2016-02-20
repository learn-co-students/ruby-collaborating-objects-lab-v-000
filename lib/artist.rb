require 'pry'
class Artist
  @@all = []
  
  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    @songs = []
    self.save
  end


  def self.find_or_create_by_name(artist_name)
    artist_detector = @@all.find{|a| a.name == artist_name}
      if artist_detector == nil
        artist = Artist.new(artist_name)
        
      else
        artist_detector

      end
  end

  def self.all
    @@all
  end


  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end