require 'pry'
class Song
attr_accessor :name,:artist

  def initialize(name)
    @name = name
  end

  def artist_name=(nam)
    new_artist = Artist.find_or_create_by_name(nam)
    new_artist.add_song(nam)
    new_artist

end
    def self.new_by_filename(filename)
      #binding.pry
      artist,song = filename.split(" - ")
      new_instance = self.new(song)
      new_instance.artist_name= artist
      new_instance

  end
  end
