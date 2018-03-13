class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.find_or_create_by_name(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name)
    song.artist_name = file_name.split(" - ")[0]
    song.name = file_name.split(" - ")[1]
    song
  end

end
