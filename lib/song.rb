class Song
  attr_accessor :name, :artist

  def initialize(name = nil, artist = nil)
    @name = name
  end# of initialize

  def self.new_by_filename(file_name)
    data = file_name.split("-")
    data[0] = song
    data[1] = artist

  end# of self.new_by_filename

  def self.artist=(artist_name)

  end# of self.artist=(artist_name)

end# of class s
