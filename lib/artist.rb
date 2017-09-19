require 'pry'

class Artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def add_song(song)
      @songs << song
      #song.artist = self
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    match = self.all.select {|i| i.name == name}
      if match != []
        match[0]
      else
        artist = Artist.new(name)
        @@all << artist
        artist
      end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
