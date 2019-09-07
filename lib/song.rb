require 'pry'


class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    artist.save
  end

  def self.new_by_filename(filename)
    song_info = filename.split(" - ")
    song = self.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end

end
