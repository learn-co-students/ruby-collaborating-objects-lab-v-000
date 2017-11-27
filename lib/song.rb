class Song
attr_accessor :name, :artist

  def initialize(name, artist_name = nil)
    @name = name
    @artist_name = artist_name
  end

  def artist=(artist_name)
    @artist = artist_name
    artist = Artist.find_or_create_by_name(@artist_name)
    artist.add_song(@name)
    artist
  end


  def self.new_by_filename(file_name)
    file = file_name.split(" - ")
    name = file[1]
    artist_name = file[0]
    song = Song.new(name, artist_name)

  end

end
