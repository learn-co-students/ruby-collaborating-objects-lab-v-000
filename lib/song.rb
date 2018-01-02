class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # def artist_name=(name)
  #   Artist.find_or_create_by_name(name)
  # end

  def self.new_by_filename(filename)
    song = self.new(filename)
    song.name = filename.split(" - ")[1]
    song.artist = Artist.new(filename.split(" - ")[0])
    song
  end
end
