class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    the_artist = Artist.find_or_create_by_name(artist_name)
    @artist = the_artist
    @artist.add_song(self)
  end


  def self.new_by_filename(filename)
    array = filename.split(" - ")
    new_instance = self.new(array[1])
    new_instance.artist_name=(array[0])

    new_instance
  end
end


