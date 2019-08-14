require 'pry'
class Artist

  attr_accessor :name, :songs

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
      #iterate over @@all to determine if the name exists
      return_array = []
      @@all.each do |file|
        if file.name == name
          return_array << file
        end
      end

      if return_array.length == 0
        new_artist = Artist.new(name)
        new_artist.save
        new_artist
      else
        return_array[0]
      end
  end

  def print_songs
    self.songs.collect do |song|
      puts song.name
    end

  end

end
