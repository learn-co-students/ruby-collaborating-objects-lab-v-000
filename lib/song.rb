class Song
  attr_accessor :name, :artist
  @@songs = []

  def self.songs
    @@songs
  end

  def initialize(name)
    @name = name
    self.class.songs << self
  end

  def self.new_by_filename(file)
    data = file.split(" - ")
    song = self.new(data[1])
    song.artist = Artist.find_or_create_by_name(data[0])
    song.artist.add_song(song)
    song



    # song = Song.new(file.split("-")[1].strip)
    # song.artist = Artist.find_or_create_by_name(file.split("-")[0].strip)
    # song.artist.add_song(song)
    # song
  end

end
