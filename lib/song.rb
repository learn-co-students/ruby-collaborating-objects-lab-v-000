class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name

  end


  def self.new_by_filename(filename)
    song_parse = filename.split(" - ")
    artist = song_parse[0]
    name = song_parse[1]
    song = self.new(name)
    song.artist_name = artist
    song
  end


  def artist_name=(name)
      @artist =  Artist.find_or_create_by_name(name)
      @artist.add_song(self)
  end


end
