class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)

    split_file = filename.split(" - ")
    song = self.new(split_file[1])

    artist = Artist.find_or_create_by_name(split_file[0])

    song.artist = artist
    artist.add_song(song)
    song
  end

end
