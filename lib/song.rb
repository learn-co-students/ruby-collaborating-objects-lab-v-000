class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
  end

  def self.new_by_filename(filename)

    song_name = filename.scan(/-(.+)-/)
    song_name = song_name[0][0].strip

    artist = filename.match(/[^-]+/)
    chosen_artist = artist[0].to_s.strip
    new_artist = Artist.find_or_create_by_name(chosen_artist)

    final_song = Song.new(song_name)
    final_song.artist = new_artist

    new_artist.add_song(final_song)

    return final_song
  end


end
