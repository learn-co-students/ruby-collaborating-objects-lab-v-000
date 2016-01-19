class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end


  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    file_split = filename.split(" - ")
    song = self.new(file_split[1])
    artist = file_split[0]
    song.artist_name = artist
    song

  end

end