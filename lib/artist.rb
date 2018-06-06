require 'pry'
class Artist
  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    self.save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    if self.all.select {|artist| artist.name == name} != []

    else
    self.new(name)
    end
  end

  def add_song(song)
    song.artist = self
  end

  def print_songs
    self.songs.each do
      |song| puts "#{song.name}"
    end
  end

end
