require 'pry'
class Song

attr_accessor :name, :artist, :file_name
  def initialize(name)
    @name = name
  end

  def artist_name=(artist)
    add_artist = Artist.find_or_create_by_name(artist)
    add_artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    @file_name = file_name
    new_song = Song.new(@file_name.scan(/\b([a-zA-Z\s]+)\W/).flatten[1].strip)
    new_song.artist = Artist.find_or_create_by_name(@file_name.scan(/\b([a-zA-Z\s]+)\W/).flatten[0].strip)
    new_song
  end

end
