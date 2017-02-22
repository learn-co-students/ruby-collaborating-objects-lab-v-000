require 'pry'

class Song
  attr_accessor :name, :genre, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist)
    artist_object = Artist.find_or_create_by_name(artist)
    artist_object.add_song(self)
  end

  def self.new_by_filename(filename)
    filename.chomp!('.mp3')
    data = filename.split(' - ')
    @artist_name = data[0]
    @name = data[1]
    song = self.new(@name)
    song.artist_name=(@artist_name)
    song
  end
end