class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    artist_string = file.split(" - ")[0]
    song_string = file.split(" - ")[1]
    song = self.new(song_string)         # self = Song class
    song.artist_name(artist_string)
    song
  end

  def artist_name(artist_name)
    instance = Artist.find_or_create_by_name(artist_name)  #returns artist instance
    self.artist = instance               # self = Song instance
    artist.add_song(self)                # self = Song instance
  end

end
