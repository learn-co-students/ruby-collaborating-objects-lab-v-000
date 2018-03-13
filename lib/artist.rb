require "pry"
class Artist
  @@all = []

  attr_accessor :name, :songs, :song

  def song
    @song
  end

  def song=(song)
    @song = song
  end

  def initialize(name)
    @name = name
    self.name = @name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    self.class.all << self
  end

  def self.all
     @@all
   end

   def self.find_by_name(name)
     @@all.detect{|artist| artist.name == name}
   end

   def self.find_or_create_by_name(name)
     if find_by_name(name) == nil
       create_by_name(name)
     else
       find_by_name(name)
   end
 end
 def self.create_by_name(name)
   artist = self.new(name)
   @songs = []
   @@all << artist
   artist
 end

   def print_songs
     songs.each do |song|
       puts song.name
     end
   end
end
