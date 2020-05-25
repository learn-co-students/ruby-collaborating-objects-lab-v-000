class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(file_name)
    data = file_name.split(/(\.| - )/)
    song = Song.new(data[2])
    song.artist_name = data[0]
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end