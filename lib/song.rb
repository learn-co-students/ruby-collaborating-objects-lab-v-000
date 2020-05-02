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
    song_parts = filename.split(' - ')

    new_instance = self.new(song_parts[1])
    new_instance.artist_name=(song_parts[0])
    new_instance
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    artist
  end

end
