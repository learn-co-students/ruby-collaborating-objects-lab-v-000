class Song
  attr_accessor :name, :artist

  def initialize(song_name)
    @name = song_name
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
    Artist.find_or_create_by_name(file_name.split(" - ")[0])
    song.artist.name = file_name.split(" - ")[0]
  end

end
