class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    arr = filename.split(" - ")
    song = self.new(arr[1])
    song.artist_name = arr[0]
    song
  end

  def artist_name
    @artist.name if @artist
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end