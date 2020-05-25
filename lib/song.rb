class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name.split(' - ')[1])
    song.artist = Artist.new(file_name.split(' - ')[0])
    song
  end

end
