class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_info = filename.split(" - ")
    song = self.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.find_or_create_by_name(name)
    else
      self.artist.name = name
    end
  end

end