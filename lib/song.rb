require 'pry'
class Song
attr_accessor :name, :artist, :song

  def initialize(name)
    @name = name
  end

  def artist_name=(nam)
    #binding.pry
    self.artist = Artist.find_or_create_by_name(nam)
    artist.add_song(self)
  end

    def self.new_by_filename(filename)
  #binding.pry
    new_instance = Song.new(filename.split(" - ")[1])
    new_instance.artist_name = filename.split(" - ")[0]
    new_instance
  end
  end
