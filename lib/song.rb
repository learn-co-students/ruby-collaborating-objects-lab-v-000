class Song

  attr_accessor :name, :artist

  def initialize(name)

    @name = name

  end

  def self.new_by_filename(filename)

    song_info = filename.split(" - ")

    new_song = Song.new(song_info[1])
    new_song.artist = Artist.find_or_create_by_name(song_info[0])
    new_song.artist.songs << new_song
    
    new_song

  end

end
