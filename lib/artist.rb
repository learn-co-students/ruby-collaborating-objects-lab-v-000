require "pry"
class Artist

  attr_accessor :name, :songs

    @@all = []

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song_one)
    @songs << song_one
    #binding.pry
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if self.find(name) == nil
      self.create(name)
    else
      self.find(name)
    end
  end

  def self.find(name)
    Artist.all.find { |n| n.name == name}
  end

  def self.create(name)
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
  end

  def print_songs
      @songs.each do |song|
         puts song.name
    end
  end



end
