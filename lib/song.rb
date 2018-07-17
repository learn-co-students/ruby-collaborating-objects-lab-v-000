class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    if artist.nil?
      nil
    else
      artist.name
    end
  end

  def self.new_by_filename(filename)
    song_artist = filename.split(" - ")
    song = new(song_artist[1])
    artist = Artist.find_or_create_by_name(song_artist[0])
  end
end
