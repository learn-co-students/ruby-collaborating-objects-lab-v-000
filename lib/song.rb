
class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name

  end

  def name=(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def self.new_by_filename(filename)

    name = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    song = self.new(name)
    @artist = Artist.new(artist)
    song.artist = @artist
    song


  end

  def artist_name=(name)
    if(self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end



end
