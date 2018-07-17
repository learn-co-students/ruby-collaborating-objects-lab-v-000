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
    artist_name, song_name = filename.split(" - ")
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(new(song_name))
  end
end
