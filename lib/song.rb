
class Song

  attr_accessor :name, :genre
  attr_reader :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    artist_object = Artist.find_or_create_by_name(artist)
    # artist_object.add_song(name)
  end

  def self.new_by_filename(file_name)
      binding.pry
    file_name = file_name.chomp(".mp3").split(" - ")
    name = file_name[1]
    song = Song.new(name)
    song.artist = file_name[0]
    # is this .genre not working?
    song.genre = file_name[2]
    song
  end

end
