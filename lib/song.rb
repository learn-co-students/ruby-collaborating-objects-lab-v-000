class Song
  attr_accessor :name, :artist

  def initialize(name = nil)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new
    attrs = filename.split(' - ')
    artist = Artist.find_or_create_by_name(attrs[0])
    song.artist = artist
    song.name = attrs[1]
    song
  end
end
