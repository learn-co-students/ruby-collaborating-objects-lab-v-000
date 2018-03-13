class MP3File
  attr_reader :artist, :song, :genre

  def initialize(file)
    @artist = file.split(" - ")[0]
    @song = file.split(" - ")[1]
    @genre = file.split(" - ")[2]
  end
  
end
