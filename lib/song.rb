require 'pry'
class Song
attr_accessor :name,:artist, :song

  def initialize(name)
    @name = name
  end

  def artist_name=(nam)
    self.artist = Artist.find_or_create_by_name(nam)
    artist.add_song(self)

end
    def self.new_by_filename(filename)
      #binding.pry
      artist,song = filename.split(" - ")
      new_instance = self.new(song)
      new_instance.artist_name=(artist)
      new_instance

  end
  end
