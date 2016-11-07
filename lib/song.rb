class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    if self.artist = nil
      self.artist = Artist.find_or_create_by_name(name)
    else
      self.artist.name
    end
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name.split("-")[1].strip)
    song.artist = Artist.find_or_create_by_name(file_name.split("-")[0].strip)
    song
  end

end
