class Song

  attr_accessor :artist, :name

  def initialize (name)
    @name = name
  end

  # def self.artist_name=(name)
  #
  # end

  def self.new_by_filename(filename)
    s = filename.split(" - ")
    new_song = Song.new(s[1])
    new_song.artist = Artist.find_or_create_by_name(s[0])
    new_song.artist.add_song(new_song)
    new_song
  end

end
