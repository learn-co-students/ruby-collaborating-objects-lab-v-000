# first attempt 6/25/17
# require 'pry'
#
# class Artist
#   attr_accessor :name, :songs, :all
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def add_song(song)
#     @songs << song
#     song.artist = self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def save
#     @@all << self
#   end
#
#   def self.find_or_create_by_name(name)
#     #need to pass in a block for detect
#     if @@all.detect {|n| n.name == name}
#       @@all.find {|n| n.name == name}
#     else
#       new_artist = self.new(name)
#       new_artist.save #need this to save the artist you add
#       new_artist
#     end
#   end
#
#   def print_songs
#     songs.each {|s| puts s.name}
#   end
# end

# second attempt 7/4/17

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_by_name(name)
    self.new(name).tap {|artist| artist.save}
  end

  def self.find_by_name(name)
    self.all.detect {|n| n.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    songs.each {|s| puts s.name}
  end

end
