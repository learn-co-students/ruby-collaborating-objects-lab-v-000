require 'pry'
class Artist
  attr_accessor :name, :songs, :all

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end


  def self.find_or_create_by_name(string)
      if @@all.find {|i| i.name == string}
        @@all.find {|i| i.name == string}
      else
        Artist.new(string)
      end
  end

  def self.new_by_filename(filename)
    song = Artist.new(filename.split(" - ")[0])
    song.name = filename.split(" - ")[0]
    song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def add_song(song)
    @songs << song
  end

end
