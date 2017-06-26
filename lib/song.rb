class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_filename = filename.split(" - ")
    artist = split_filename[0]
    name = split_filename[1]
    song = self.new(name)
    Artist.find_or_create_by_name(artist).add_song(song)
    song
  end
end
