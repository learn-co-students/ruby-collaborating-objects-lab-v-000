class Song
  attr_accessor :name, :artist

  def initialize(name="")
    @name=name
  end

  def artist=(artist)
    @artist=artist
  end

  def self.new_by_filename(filename)
    #puts filename
    name=filename.split(/\s-\s/)
    song=self.new(name[1])
    artist=Artist.find_or_create_by_name(name[0])
    song.artist=artist
    artist.add_song(self)
    song
  end

end
