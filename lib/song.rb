class Song
  attr_accessor :name, :artist

  def initialize (name)
    @name = name
  end

  def self.new_by_filename(file_name)
    #creating a new instance of itself
    song = file_name.split(" - ")[1] # split and [1] will equal to the song according to how the mp3's are written
    artist = file_name.split(" - ")[0] # split and [0] will equal to the artist
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


end
