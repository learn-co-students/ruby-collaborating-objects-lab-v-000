class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    info = filename.split(" - ")
    artist_name = info[0]
    title = info[1]
    # genre = info[3].chomp(".mp3")

    song = self.new(title)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)

    song
  end
end
