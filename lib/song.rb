class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    new_song = self.new(filename.split(" - ")[1])
    new_song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    #it's going to be a string unless a new artist is created
    new_song.artist.add_song(new_song)
    new_song
  end
end
