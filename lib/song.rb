class Song
  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(file_name)
    split_file = file_name.split(" - ")
    new_song = Song.new(split_file[1])
    new_song.artist = Artist.find_or_create_by_name(split_file[0])
    new_song.artist.add_song(new_song)
    return new_song
  end

  def artist= (name)
    @artist = Artist.new(name)
    @artist = @artist.name
  end
end
