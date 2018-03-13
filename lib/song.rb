

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # Do we need this?
  # def artist_name=(name)
  #   Artist.new(name)
  # end

  def self.new_by_filename(filename)
    name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    new_song =  Song.new(name)
    new_song.artist = Artist.find_or_create_by_name(artist_name)
    new_song
  end

end
