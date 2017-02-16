class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    info = file_name.split(" - ")
    new_song = Song.new(info[1])
    artist = Artist.find_or_create_by_name(info[0])
    new_song.artist = artist
    artist.add_song(new_song)
    new_song
  end

end 
