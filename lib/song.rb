require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(file)
    song_title = file.split(" - ")[1]
    song_artist = file.split(" - ")[0]
    song_title_instance = Song.new(song_title)
    song_title_instance.artist_name = song_artist
    song_title_instance
  end

  end
