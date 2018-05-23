
class Song
  attr_reader :name, :artist
  
  def initialize(song_name)
    @name = song_name
  end

  def name=(song_name)
    @name = song_name
  end

  def artist=(name)
    @artist = Artist.find_or_create_by_name(name)
    # @artist.add_song(self)
  end

  def self.new_by_filename(filename)
    parts = filename.split(' - ')
    song_title = parts[1]
    musician = parts[0]
    new_song = Song.new(song_title)
    new_song.artist = musician  
    new_song
  end
end