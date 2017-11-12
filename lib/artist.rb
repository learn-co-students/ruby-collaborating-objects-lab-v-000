require 'pry'

class Artist

@@all = []

attr_accessor :name, :songs

  def initialize(name)
    @name=name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all.each do |artist|
      puts self.name
    end
  end

  def save
    @@all << self
    @@all
  end

  def self.find_or_create_by_name(name)
    if artist = @@all.find {|artist| artist.name == name}
      artist
    else
      Artist.new(name)
    end

  end

  def print_songs
    @songs.each{ |song| puts song.name  }
  end

end
