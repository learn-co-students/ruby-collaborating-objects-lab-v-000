class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
    @artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    new_instance = Song.new(file_name.split(" - ")[1])

    new_instance.artist = Artist.find_or_create_by_name(file_name.split(" - ")[0])

    new_instance

  end




end
