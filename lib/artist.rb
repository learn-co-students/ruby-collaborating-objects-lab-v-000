require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []


  def initialize (name)
    @name = name
    @songs = []
    self.save

  end

  def add_song(song)
    self.songs << song
    song.artist = self

  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

    def self.find_by_name(name)
      self.all.detect {|a| a.name == name}
    end

    def self.create_by_name(name)
      Artist.new(name)
    end

# finds or creates an artist by name maintaining uniqueness of objects by name property (FAILED - 1)
  #  Creates new instance of Artist if none exist (FAILED - 2)

def print_songs
  self.songs.each do |song|
    puts song.name
  end
end


end
