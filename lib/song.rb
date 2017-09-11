class Song

  attr_accessor :artist, :add_song

  def initialize(songname)
    @name = songname
  end

  def name=(songname)
    @name = songname
  end

  def name
    @name
  end

  def artist_name=(artist)
    return Artist.find_or_create_by_name(artist)
  end

  def self.new_by_filename(file)
    song = file[0...-4]
    songsplit = song.split(" - ")
    artist = songsplit[0]
    songtitle = songsplit[1]
    new_song = Song.new(songtitle)
    new_artist = new_song.artist_name=artist
    new_artist.add_song(new_song)
  end



end
