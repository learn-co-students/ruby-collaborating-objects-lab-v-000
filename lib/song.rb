class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)     # :file_name 'Michael Jackson - Black or White - pop.mp3'
    name = filename.chomp(".mp3").split(" - ")

    song = self.new(name[1])
    song.artist_name = (name[0])
    song
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end
end
