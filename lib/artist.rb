require 'pry'

class Artist
 
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @@all = []


  end
  
  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(artist)
   if @@all.include?(artist) == true
     artist
   else
     artist = Artist.new(artist)
     
   end
end
#<Artist:70118655874120> => #<Artist:0x007f8b8b26a890 @name="Michael Jackson", @songs=[]>

  def print_songs
  end
end