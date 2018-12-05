class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist_object)
    @artist = artist_object
  end

  def self.new_by_filename(file_name)
    name = file_name[/-\s.+\s-/][/\b\w.*\w\b/]
    artist_name = file_name[/^[a-zA-Z\s]+\b/]
    song = self.new(name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.artist.add_song(song)[-1]
  end
end
