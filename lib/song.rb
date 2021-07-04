class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    songs_artist = Artist.find_or_create_by_name(name)
    @artist = songs_artist
    songs_artist
  end

#new_by_filename will strip ".mp3" from the filename, then parse it into its Artist and Song
  def self.new_by_filename(file_name)
    new_array = file_name.split(" - ")
    instance = self.new(new_array[1])
    instance.artist_name = new_array[0]
    instance.artist.add_song(new_array[1])
    instance
  end
end
