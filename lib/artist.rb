require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def self.find_by_name(checker)
    self.all.select do |i|
      i.name == checker
    end
  end

 # def self.create_by_name(artist_name)
  #  artist = Artist.new(artist_name)
   # artist
  #end

  def self.find_or_create_by_name(artist_name)
    check = self.find_by_name(artist_name)
    if check.empty? == false
     self.find_by_name(artist_name)[0]
    else
      Artist.new(artist_name)
  end
end

  def save
    @@all << self
  end

  def songs
    @songs
  end

  def print_songs
    songs.each do |i|
    puts i.name  
  end
  end

  def self.all
    @@all
  end
  




end