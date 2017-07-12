require "pry"
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file_arr = filename.split(" - ")
    song = Song.new(file_arr[1])
    new_artist = Artist.find_or_create_by_name(file_arr[0])
    song.artist = new_artist
    new_artist.add_song(song)
    new_artist.save
    song
  end

end
