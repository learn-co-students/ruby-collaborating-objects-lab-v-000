require 'pry'
class Song
attr_accessor :name,:artist, :song

  def initialize(name)
    @name = name
  end

  def name=(nam)
    @name = nam
  end

  def artist_name=(nam)

      if (self.artist.nil?)
          self.artist = Artist.new(nam)

      else
          self.artist.name = nam
      end
end
    def self.new_by_filename(filename)
      #binding.pry
      new_instance = self.new(filename.split(" - ")[1])
      new_instance.artist_name=(filename.split(" - ")[0])
      new_instance

  end
  end
