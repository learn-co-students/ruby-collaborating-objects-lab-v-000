require_relative 'artist.rb'

class Song
  attr_accessor :title, :name, :artist
  def initialize(name)
    @name=name
  end

  def self.new_by_filename(file)
    arr=file.split(" - ")
    song = self.new(arr[1])
    song.artist_name=(arr[0])
    song.artist.add_song(song)
    song
  end

  def artist_name=(name)
     @artist=Artist.find_or_create_by_name(name)
  end

end

