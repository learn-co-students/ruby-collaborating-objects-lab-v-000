require 'pry'

class Artist
  attr_accessor :name
    @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @song_names = []
  end

  def save
    @@all << self
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

  def print_songs
    puts "#{@songs[0].name}"
    puts "#{@songs[1].name}"
  end

  def self.find(artist_name)
    self.all.find { |artist| artist.name == artist_name }
  end


  def self.find_or_create_by_name(artist_name)
    if self.find(artist_name) != nil
      self.find(artist_name)
    else
      new_object=Artist.new(artist_name)
      new_object.save
      new_object
    end
    end

end
