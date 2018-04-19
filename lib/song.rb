class Song
  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)

    if (self.artist.nil?)

      self.artist = Artist.find_or_create_by_name(name)
      #binding.pry
      #self.artist = Artist.new(name)
      self.artist.add_song(self.name)
      #self.artist
    else
      self.artist.name = name
      self.artist.add_song(self.name)
      #self.artist
    end
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist_name = filename.split(" - ")[0]
    song
  end
end
