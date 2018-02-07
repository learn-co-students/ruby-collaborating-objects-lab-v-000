class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song = Song.new(file.split("-")[1].strip)
    song.artist_name = file.split("-")[0].strip
    # binding.pry
    song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end
end
