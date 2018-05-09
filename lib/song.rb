class Song
  attr_accessor :name, :artist, :files

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file_name = filename.split(" - ")
    name = file_name[1].gsub(".mp3", "")
    song = self.new(name)
    song.artist_name = file_name[0]
    song
  end
end
