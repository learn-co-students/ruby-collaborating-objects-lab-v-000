class Song
  attr_accessor :name
  # attr_reader :artist

  def initialize(name)
    @name = name
  end

  def artist=(name)
   @artist = Artist.find_or_create_by_name(name)
   self.artist.add_song(self)
   self.artist
  end

  def artist
    @artist
  end

  def self.new_by_filename(file_name)
    song = Song.new(file_name.split(" - ")[1])
    # song.artist = (file_name.split(" - ")[0])
  end

end
