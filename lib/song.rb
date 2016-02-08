class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.create_by_name(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(file_name)
    file_elements = file_name.split(" - ")
    song_name = file_elements[1]
    song_artist = file_elements[0]
    song = self.new(song_name)
    song.artist_name=(song_artist)
    song
  end

end