class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    split = file.split(/ - /)
    new_song = Song.new(split[1])
    new_song.artist = Artist.find_or_create_by_name(split[0])
    new_song.artist.add_song(new_song)
    new_song
  end
end
