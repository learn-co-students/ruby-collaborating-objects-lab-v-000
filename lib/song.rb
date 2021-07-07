class Song
  attr_accessor :name, :artist, :song

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file_data = filename.split(" - ")
    song = self.new(file_data[1])
    song.artist = Artist.find_or_create_by_name(file_data[0])
    song.artist.add_song(song)
    song
  end

end
