class Song
  attr_accessor :name, :artist

  def initialize(name, artist=nil)
    @name = name
    @artist = Artist.find_or_create_by_name(artist)
    @artist.add_song(name)
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1], file_name.split(" - ")[0])
  end
end
