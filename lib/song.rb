class Song

  attr_accessor :name, :artist


  def initialize(song)
    @name = song
  end

  def artist= (artist)
    @artist = artist
  end

  def artist
    @artist
  end

  def self.new_by_filename(filename)
    song_file = filename.split(" - ")
    new_song = self.new(song_file[1])
    new_artist = Artist.find_or_create_by_name(song_file[0])
    
    binding.pry
    new_song.artist = new_artist

    new_song.artist.songs << new_song
    new_song
  end

end
