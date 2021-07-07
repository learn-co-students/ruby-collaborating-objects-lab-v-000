require 'pry'
class Artist

attr_accessor :name, :songs, :all

@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_name)
    song = Song.new(song_name)
    @songs << song_name
  end

  def self.all
    @@all
  end

  def save
    if !@@all.include?(self)
    @@all << self
    end 
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}

  end


  def self.find_or_create_by_name(artist_name)
    if self.find_by_name(artist_name)
      self.find_by_name(artist_name)
    else
        artist = Artist.new(artist_name)
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end



end
