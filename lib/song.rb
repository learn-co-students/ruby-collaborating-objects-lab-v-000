class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name) 
    split_file = file_name.split("-")
    artist_name = split_file[0].strip
    song = split_file[1].strip
    artist = Artist.find_or_create_by_name(artist_name)
    new_song = Song.new(song)
    new_song.artist = artist
    artist.add_song(new_song)
    new_song
  end

end
