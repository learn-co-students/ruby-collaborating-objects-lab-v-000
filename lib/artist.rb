require "pry"
class Artist
  attr_accessor :name
  @@song_count =0
  @@all=[]
  def initialize(name)
    @name=name
    @songs=[]
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count+=1
  end

  def add_song_by_name(songstring)
    song = Song.new(songstring)
    @songs << song
    song.artist = self
    @@song_count+=1
    song
  end

  def self.song_count()
    @@song_count
  end

  def songs
    @songs
  end

  def print_songs
    str=""
    @songs.each do |song|
      str= str + song.name + "\n"
    end
 puts str
  end

  def self.all
    @@all
  end

  def save
   @@all << self
  end

  def self.find_or_create_by_name(name)
    artist =@@all.select do |artist| artist.name==name end
    if artist == [] || artist==nil
    artist = Artist.new(name)
    @@all << artist
    artist
    else
    artist[0]
    end
   end
end
