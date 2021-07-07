require 'pry'

class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(filename)
    file_arr = filename.split(" - ")
    new_song = self.new(file_arr[1])
    new_song.artist_name = file_arr[0]
    new_song.artist.add_song(file_arr[1])
    new_song.save
  end
end
