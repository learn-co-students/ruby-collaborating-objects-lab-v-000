class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    files = self.new(filename.split(" - ")[1])
    files.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    files.artist.add_song(files)
    files
  end
end