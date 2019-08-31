class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    new_input = file.split(" - ")
    new_song = self.new(new_input[1])
    artist = Artist.find_or_create_by_name(new_input[0])
    artist.add_song(new_song)
    new_song.artist = artist
    new_song
  end

end
