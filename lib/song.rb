class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    name, artist = name_artist_by_file_name(file_name)
    song = self.new(name)
    song.artist = Artist.find_or_create_by_name(artist)
    song.artist.add_song(song)
    song
  end

  private
  def self.name_artist_by_file_name(file_name)
    file_names = file_name.split("-")
    name = file_names[1].strip
    artist = file_names[0].strip
    return name, artist
  end
end
