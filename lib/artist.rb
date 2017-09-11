require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
   @name = name
   @songs= []
   #[]
  end

  def add_song(song)
   @songs << song
   #<Song:0x00000001b70330 @name="Rock With You">
   song.artist = self
   # ****SELF****
   #   #<Artist:0x00000001b70240
   # @name="Michael Jackson",
   # @songs=[#<Song:0x00000001b70330 @name="Rock With You">]>
   song
  end

  def songs
   @songs
   #<Song:0x00000001b70330 @name="Rock With You">
  end

  def save
   @@all << self
   self
  end

  def self.all
   @@all
  end

  def self.find_or_create_by_name(name)
   self.all.detect {|artist| artist.name == name} || Artist.new(name).save
   #Name - Michael Jackson
   #<Artist:0x0000000239dbe8 @name="Michael Jackson", @songs=[]>
   # => Michael Jackson == @name="Michael Jackson"
   #Artist.new(Michael Jackson)
  end

  def print_songs
   self.songs.each {|song| puts song.name}
   #<Artist:0x0000000239dbe8 @name="Michael Jackson", @songs=[]>
   #Michael Jackson
  end
end
