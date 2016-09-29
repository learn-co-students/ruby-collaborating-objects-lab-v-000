require 'pry'
class Artist

attr_accessor :name, :songs

  @@all = []


  def initialize(name)
    @name = name
    @songs = []
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

  def self.find_or_create_by_name(name)
    if result = @@all.detect { |artist| artist.name == name }
      result

    else
      artist = self.new(name)
      # binding.pry
      artist.save
      artist
    end
  end

  def print_songs
   @songs.each do |song|
     puts song.name
    #  binding.pry
    end
  end

end
