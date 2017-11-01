class Song

  attr_accessor :name, :artist, :data

  def initialize(name)
    @name = name
  end

  def artist_name
    if artist
      self.artist.name
    else
      nil
    end
  end

  def self.new_by_filename(file_name)
    @data = file_name.delete(".mp3").split(" - ")
    song = Song.new(@data[1])
    song.artist = Artist.find_or_create_by_name(@data[0])
    song.artist.add_song(song)
    song.artist.save
    song
  end
end
