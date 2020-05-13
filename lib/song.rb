require 'pry'
class Song
  attr_accessor :name, :artist

@@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    song_array = filename.split(" - ")
    name = song_array[1]
    song = self.new(name)
    song.artist_name = song_array[0]
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end



end
