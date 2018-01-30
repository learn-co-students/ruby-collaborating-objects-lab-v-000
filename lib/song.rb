require 'pry'
class Song
  attr_accessor :name, :artist
  # attr_reader :

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_title = filename.split(" - ")[1]
    song_artist = filename.split(" - ")[0]
    song = Song.new(song_title)
    song.artist = (song_artist)
    # binding.pry
    song
  end

  def artist=(name)

    if name.kind_of?(String)
      artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
    else
      # binding.pry
      # self.artist = name
      name.add_song(self)
    end

  end
end
