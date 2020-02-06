require 'pry'
class Artist

  attr_accessor :name, :artist

  @@all =[]


  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end


  def self.find_or_create_by_name(name)
  if artist = self.all.detect{|person| person.name == name}
      artist
    else
      artist = Artist.new(name)
      artist.save
      artist
    end
  end

  def add_song(song)
   @songs << song
   song.artist = self
 end

 def songs
   @songs
 end

 def print_songs
   songs.each {|song| puts song.name}

 end
end #end of Artist class
