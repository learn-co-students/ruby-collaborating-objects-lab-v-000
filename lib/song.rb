class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(name)
    holder = name.split(" - ")
    fileName = holder[1]
    artistName = holder[0]
    song = self.new(fileName)
    if Artist.all.all? { |artist| artist.name != artistName }
      song.artist_name(artistName)
    else
      song
    end
    song
  end

  def artist_name(artist)
      if (self.artist.nil?)
        self.artist = Artist.new(artist)
      else
        self.artist.name = artist
      end
    end
end
