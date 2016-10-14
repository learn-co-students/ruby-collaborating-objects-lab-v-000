class Song

  attr_accessor :name, :artist
  attr_reader :artist_name

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    fields = filename.split(" - ")
    new_song = self.new(fields[1])
    new_song.artist_name(fields[0])
    new_song
#    @song = @filename[1]
  #  @genre = @filename[2]
  #  self.new(@song)
  end

  def artist_name(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
