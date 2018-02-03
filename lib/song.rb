require "pry"

class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  def artist_name=(a_name)
      self.artist = Artist.find_or_create_by_name(a_name)
      binding.pry
      artist.add_song(self)
    end
  def self.new_by_filename(file)
    f_array = file.scan(/(.+) - (.+) -/)
    f_song = Song.new(f_array[0][1])
    f_song.artist_name = f_array[0][0]
    f_song
  end
end
