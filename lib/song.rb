class Song

  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def artist_name(artist)
    Artist.find_or_create_by_name(artist)
  end

  def self.new_by_filename(file)
    file_split = file.split(" - ")
    song = self.new(file_split[1])
    song.artist = Artist.find_or_create_by_name(file_split[0])
    song
  end
end
