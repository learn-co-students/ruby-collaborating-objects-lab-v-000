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
      artist_to_return = @@all.detect {|artist| artist.name == name}
      if artist_to_return == nil
        Artist.new(name)
      end
    end

    def print_songs
      @songs.each { |s| puts s.name }
    end

end
