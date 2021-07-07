require 'pry'
class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name

  end

  def self.new_by_filename(file)
    file_array = file.split(/ - |.mp3/ )
    song = file_array[1]
    artist = file_array[0]
    song = self.new(song)
    song.artist = Artist.find_or_create_by_name(artist)
    song.artist.songs << song
    song
  end
end
