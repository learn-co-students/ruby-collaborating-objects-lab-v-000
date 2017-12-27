
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    array = file_name.gsub(".mp3", "").split(" - ")
    song = Song.new(array[1])
    artist = Artist.find_or_create_by_name(array[0])
    song.artist = artist
    song.artist.name = array[0]
    song.artist.add_song(song)
    song
  end
end
