class Song
  #i will create song and i will make a connection between the song and its Artist
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(a_name)
      self.artist = Artist.find_or_create_by_name(a_name)
      artist.add_song(self)
      artist
  end

  def self.new_by_filename(file_name)
    split_name_song = file_name.split(" - ")
    song = self.new(split_name_song[1])
    song.artist_name = split_name_song[0]
    song
  end
end
