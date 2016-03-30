class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
  end

  def self.new_by_filename(name_of_file)
    song = Song.new(name_of_file.split(" - ")[1])
    artist_name = name_of_file.split(" - ")[0]
    song.artist_name = artist_name
    song
  end

end
