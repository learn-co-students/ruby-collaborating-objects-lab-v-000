class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
   def self.new_by_filename(file_name)
    song_parts = file_name.split(" - ")
    song = song_parts[1]
    artist = song_parts[0]
    song_new = self.new(song)
    song_new.artist_name = artist
    song_new
  end
 end
