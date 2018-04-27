class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(person)
    if (self.artist.nil?)
      self.artist = Artist.new(person)
    else
      self.artist.name = person
    end
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    song = Song.new(file[1])
    song.artist_name = file[0]
    song
  end
end
