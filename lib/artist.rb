require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    # binding.pry
    artist = self.all.detect{|n| n.name == name}
    if artist != nil
        artist
    else
    artist =  Artist.new(name)
    artist.save
    end
    artist
  end

  def print_songs
    songs.each do |n|
      puts "#{n.name}"
    end
  end

end
