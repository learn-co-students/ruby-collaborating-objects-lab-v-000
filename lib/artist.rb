# artist.rb
require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)

    if self.all == []
      new_artist = Artist.new(name)
      new_artist.save
      return new_artist
    end

    self.all.each do |artist|
      if artist.name == name
        return artist
      end
    end
    # If it makes it here, the artist doesn't already exist
    new_artist = Artist.new(name)
    new_artist.save
    return new_artist
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end
