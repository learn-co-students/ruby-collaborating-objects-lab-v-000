class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name

  end

  def artist_name
      self.artist && self.artist.name
  end


  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.find_or_create_by_name(name)
      self.artist.add_song(self)
    else
      self.artist.name = name

    end
  end
end
