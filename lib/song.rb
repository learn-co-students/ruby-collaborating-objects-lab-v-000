class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  def self.new_by_filename(filename)
    filename = filename.split('-')
    #filename[0] = artist name
    #filename[1] = song name
    new_song = Song.new(filename[1].strip)
    new_song.artist = Artist.find_or_create_by_name(filename[0].strip)
    new_song
  end

  def artist=(artist)
    @artist = artist
    @artist.add_song(self)
  end

end
