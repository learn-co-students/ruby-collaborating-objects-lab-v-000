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

  def self.find_or_create_by_name(artist_name)
    artist_name_array = []
    artist_for_return = Artist

    @@all.each do |artist|
      if artist.name == artist_name
        artist_for_return = artist
      end
      artist_name_array << artist.name
    end

    if artist_name_array.include?(artist_name)
      artist_for_return
    else
      new_artist = Artist.new(artist_name)
      @@all << new_artist
      new_artist
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
