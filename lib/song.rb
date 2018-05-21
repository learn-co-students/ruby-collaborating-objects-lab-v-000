class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(song_file)
    song_array = song_file.split(" - ")
    song_name = song_array[1]
    new_song = self.new(song_name)

    #artist_name is a method of the song instance
    new_song.artist_name=(song_array[0])
    #add_song is a method of the artist instance...
    # ...of the new_song instance
    new_song.artist.add_song(new_song)
    new_song
  end

  def artist_name=(artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
  end
end
