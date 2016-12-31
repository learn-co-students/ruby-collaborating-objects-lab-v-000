require 'pry'
class Song
attr_accessor :name,:artist

  def initialize(name)
    @name = name
  end

  def artist_name=(nam)
#binding.pry
    self.new_artist = Artist.find_or_create_by_name(nam)
    new_artist.add_song(self)
    new_artist

end
    def self.new_by_filename(filename)
      #binding.pry
      #artist,song = filename.split(" - ")
      new_instance = self.new(filename.split(" - ")[1])
      new_instance.artist_name=filename.split(" - ")[1]
      new_instance

  end
  end
