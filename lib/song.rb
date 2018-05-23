
class Song
  attr_accessor :name
  attr_reader :artist
  
  def initialize(song_name)
    @name = song_name
  end

  def artist=(name)
    if name.is_a? String
      @artist = Artist.find_or_create_by_name(name)
    else
      @artist = name
    end
    self.artist.add_song(self)
  end

  def self.new_by_filename(filename)
    musician, song_title = filename.split(' - ')
    new_song = self.new(song_title)
    new_song.artist = musician  
    new_song
  end
end