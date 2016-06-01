class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(file_name)
    split_array = file_name.split(" - ")
    song_name = split_array[1].strip
    artist_name = split_array[0].strip
    song = self.new(song_name)
    song.artist_name = artist_name
    song
  end

end
