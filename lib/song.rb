class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artist, song = file_name.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song

    # data = file_name.split(" - ")
    # name = data[0]
    # songname = data[1].gsub(".mp3", "")
    #
    # song = self.new(song)
    # song.name = songname
    # song.artist.name = name
    # song
  end

  def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
  end
end
