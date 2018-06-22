class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    file = file.split(" - ")
    song = self.new(file[1])
    artist_name=(file[0])
    song.artist = artist_name
    song
  end

  def artist_name=(name, some_song)
    Artist.find_or_create_by_name(name)
    Artist.add_song(some_song)
  end

end
