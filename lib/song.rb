require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    split_file = file.split(" - ")
    song_artist = split_file[0]
    song_title = split_file[1]

    new_song = self.new(song_title)
    new_artist = Artist.find_or_create_by_name(song_artist)

    new_song.artist = new_artist
    new_artist.add_song(new_song)
    new_song
  end

end
