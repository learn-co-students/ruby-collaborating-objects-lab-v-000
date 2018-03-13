class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    title = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(title)
    song.artist = Artist.find_or_create_by_name(artist)
    song
  end

end
