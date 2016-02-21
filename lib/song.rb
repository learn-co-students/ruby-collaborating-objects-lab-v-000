class Song
  attr_accessor :name, :artist_name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    songs = filename.split(" - ")
    Song.new(songs[1])
    Song.artist_name(songs[0])
  end

  def self.artist_name=(name)
    #self.artist = name
    Artist.find_or_create_by_name(name)
    self.add_song(self)
  end

end