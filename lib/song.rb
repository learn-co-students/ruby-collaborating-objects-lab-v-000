class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(file_name)
    new_instance = file_name.split(" - ")
    new_song = Song.new(new_instance[1])
    new_song.artist = Artist.find_or_create_by_name(new_instance[0])
    new_song
  end
end