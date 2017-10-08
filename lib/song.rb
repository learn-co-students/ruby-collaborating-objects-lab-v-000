class Song
  attr_accessor :name, :song, :artist#, :music_file

# @@all = []
  def initialize(name)
    @name = name
  @artist = artist
  @song = song
  # @music_file = music_file

  end

  def self.new_by_filename(artist)
        # song = file.split(" - ")
        # artist = file.split(" - ")
        new_song = self.new(song)
        new_song.artist_name = artist
        new_song.save
  end
end
