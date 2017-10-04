require 'pry'
class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.create_by_name(name)
    created_by_name = self.new(name)
    created_by_name.save
    created_by_name
  end

  def self.find_by_name(name)
    @@all.detect{|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name) != nil
      find_by_name(name)
    else
      create_by_name(name)
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
