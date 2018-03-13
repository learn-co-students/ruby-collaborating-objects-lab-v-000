require 'pry'
class Artist
  attr_accessor :name
  attr_reader :song_list

  @@all = []

  def initialize(name)
    @name = name
    @song_list = []
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song_to_add)
    self.song_list << song_to_add
  end

  def songs
    self.song_list
  end

  def self.find_or_create_by_name(name)
    artist = self.all.detect { |artist| artist.name == name }
    artist ? artist : Artist.new(name)
  end

  def print_songs
    song_list.each { |e| puts e.name  }
  end
end
