class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)

  end

  def self.new_by_filename(file_name)
    #Split file name into song name and artist name
    song_data = file_name.split(" - ")

    artist = song_data[0]
    song_name = song_data[1]

    new_song = self.new(song_name)
    new_song.artist_name = artist 
    new_song

  end



end
