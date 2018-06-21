require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def name=(name)
    @name = name
  end

  def add_song(song)
    @songs << song #the song instance already exists so no .new needed
  end

  def songs #before #songs could work we needed a way to add the songs
    @songs
  end

  def save  #the rest is found in advanced class methods lab
    @@all << self
  end

  def self.all
    @@all.uniq
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.detect{|i| i.name == artist_name}
      @@all.detect{|i| i.name == artist_name}
    elsif @@all.detect{|i| i.name == artist_name} == nil
      artist = self.new(artist_name)
      artist.name = artist_name
      artist.save
      artist # Creates new instance of Artist if none exist means expecting return
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name #said print meant puts
    end
  end


end

#Always look out for return values
#Hunt to find where the error is. Line numbers and tests are so simple now.
#pry it up, step by step.
