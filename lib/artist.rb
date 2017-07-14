require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
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
    if artist_old = @@all.detect {|artist_instance| artist_instance.name == name} #true
      artist_old
    else
      artist_new = Artist.new(name)
      artist_new.save
      artist_new
    end
  end

  def print_songs
    puts @songs.collect {|song_instance| song_instance.instance_variable_get(:@name)}.join("\n")
  end

end
