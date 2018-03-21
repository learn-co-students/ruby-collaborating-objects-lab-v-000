class Song
  attr_accessor :name, :artist, :filename
  attr_reader :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[0] #parse
    song_name = filename.split(" - ")[1] #parse
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
    song.artist_name = artist_name
    song
  end

end
