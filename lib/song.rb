class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    split_name = file_name.split(" - ")
    song = self.new(split_name[1])
    artist = Artist.new(split_name[0])
    song.artist = artist
    artist.songs << song
    song
  end

end
