class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir.entries(path).reject {|entry| entry == "." || entry == ".."}
  end

  def import
    self.files
    @files.each {|filename|
      data = filename.split(" - ")
      artist = Artist.find_or_create_by_name(data[0]) # data[0] == artist name
      song = Song.new(data[1]) # data[1] == song name
      artist.add_song(song) # data[1] = song name
    }
  end

end