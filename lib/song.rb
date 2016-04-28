class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
    song.artist=file_name.split(" - ")[0]
    blue = Artist.find_or_create_by_name(song.artist)
    blue.save
  end

end
