
class Song

  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    artist = Artist.find_or_create_by_name(artist)
    @artist = artist
  end

  def self.new_by_filename(file_name)
    file_name = file_name.chomp(".mp3").split(" - ")
    name = file_name[1]
    song = Song.new(name)
    song.artist = file_name[0]
    binding.pry
    song.artist.add_song(song)
    song.genre = file_name[2]
    song
  end

end
