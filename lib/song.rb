class Song

  attr_accessor :name, :genre, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artist_name = file_name.split(' - ')[0]
    song_name = file_name.split(' - ')[1]
    genre = file_name.split(' - ')[2].gsub(/\.mp3$/, '')
    song = Song.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
    song.genre = genre
    song
  end
end
