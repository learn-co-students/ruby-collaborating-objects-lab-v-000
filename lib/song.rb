class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    # data = file_name.split("/").last
    # song = Song.new(data.split(" - ")[1])
    # song.artist = Artist.new_by_filename(file_name)
    # song
    # binding.pry
    # song.artist.name = file_name.split(" - ")[1]
    song_info = file_name.split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end

end
