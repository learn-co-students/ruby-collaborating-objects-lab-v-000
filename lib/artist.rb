require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    songs << song
  end

  def save
    @@all << self unless @@all.include?(self)
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.each do |artist|
      if artist.name == name
        return artist
      end
    end
    return Artist.new(name)
  end

  def print_songs
    songs.each {|song| puts song }
  end


end