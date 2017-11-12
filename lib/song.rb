class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_filename = filename.split(" - ")
    new_song = Song.new(split_filename[1])
    new_song.artist = Artist.find_or_create_by_name(split_filename[0])
    new_song.artist.songs << new_song
    new_song
  end
end
