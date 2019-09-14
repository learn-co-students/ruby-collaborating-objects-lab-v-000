require 'pry'

class Song
  attr_accessor :name, :artist
    @@all = []


  def initialize(name)
    @name = name

  end
  def artist_name=(name)
    new_artist = Artist.find_or_create_by_name(name)
    new_artist.add_song(self)

  end



  def self.new_by_filename(song_name)
      song_title_1 = song_name.split(" - ")[1]
        song_artist_1 = song_name.split(" - ")[0]
        i = Song.new(song_title_1)
    i.artist_name= song_artist_1
    i
  end




end
