class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    data = file.split('-').collect {|name| name.strip}
    name = data[1]
    artist = data[0]
    song = self.new(name)
    song.artist_name=artist
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

end