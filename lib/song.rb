class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    pieces = file_name.split(" - ")
    song = Song.new(pieces[1])
    artist = Artist.find_or_create_by_name(pieces[0])
    song.artist = artist
    song
  end

end
