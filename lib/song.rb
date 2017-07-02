class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    file_data = file.split(" - ")
    new_song = Song.new(file_data[1].tr(".mp3", ""))
    new_song.artist = Artist.find_or_create_by_name(file_data[0])
    new_song.genre = file_data[2]
    new_song.artist.add_song(new_song)
    new_song
  end

end
