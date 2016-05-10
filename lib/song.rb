class Song

    attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
  artist_name = filename.split(/\s[-]\s/)[0]
  song_name = filename.split(/\s[-]\s/)[1]  

  song = self.new(song_name)
  song.artist_name = artist_name
  song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

end