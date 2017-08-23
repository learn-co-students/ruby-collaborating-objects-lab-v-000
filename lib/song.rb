
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    separated_file = filename.split(" - ")
    new_song = self.new(separated_file[1])
    new_song.artist_name = separated_file[0]

    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

end
