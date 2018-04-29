require 'pry'


class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name(artist)
    artist_instance = Artist.find_or_create_by_name(artist)
    artist_instance.add_song(@name)
    artist_instance
  end

  def self.new_by_filename(file_name)
    song_info = file_name.split(" - ")
    @name = song_info[1]
    @artist = song_info[0]
    song_instance = self.new(@name)
    song_instance.artist = song_instance.artist_name(@artist)
    song_instance
  end

end
