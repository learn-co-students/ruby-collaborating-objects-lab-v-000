class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    title = file[1]
    artist = file[0]
    new_song = self.new(title)
    new_song.artist_name = artist
    new_song
  end


end
