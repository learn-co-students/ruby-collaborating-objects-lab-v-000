
require "pry"
class Artist

  attr_accessor :name, :song, :genre
  @@all = []

  def initialize(name)
    @name = name
    @genre = genre
    @songs = []
    # @@all.each do |artist|
    #   # binding.pry
    #   if artist.name == name
    #     return artist
    #   else
    #     # binding.pry
    #     save
    #   end
    #   # binding.pry
    # end
  end

  def save
    @@all << self
    # @@all
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    @song << song
    @song.artist = self
    @song
  end


  def self.find_or_create_by_name(name)

      if artist = self.find_by_name(name)
        return artist
      else
        self.create_by_name(name)
      end
  end

  def self.find_by_name(name)
    @@all.detect { |artist| artist.name == name }
  end

  def self.create_by_name(name)
      artist = self.new(name)
      artist.save
      return artist
  end

  def print_songs
    @songs.each do |song|
      puts song.name + "\n"
    end
  end
end
