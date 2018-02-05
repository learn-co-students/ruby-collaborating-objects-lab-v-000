class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name=name
  end
  def self.new_by_filename(filename)
    file_name= filename.gsub(".mp3", "")

    song_name = file_name.split(" - ")[1]
    name_artist= file_name.split(" - ")[0]
    song= Song.new(song_name)
    artist= Artist.find_or_create_by_name(name_artist)
    song.artist= artist
    artist.songs << song
    song
  end
  def artist_name=(name)
    @artist= Artist.find_or_create_by_name(name)
    Artist.add_song(self)
  end

end
