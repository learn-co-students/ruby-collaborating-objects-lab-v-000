
class Song

  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file_name = file_name.chomp(".mp3").split(" - ")
    name = file_name[1]
    song = Song.new(name)
    song.artist = Artist.find_or_create_by_name(file_name[0])
    song.artist.add_song(song.name)
    song.genre = file_name[2]
    song
  end

end
