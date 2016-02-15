class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    files
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if{|a| a.end_with?("mp3") == false}
    @files
  end

  def import
    self.files
    @files.each {|filename|
      data = filename.split(" - ")
      artist = Artist.find_or_create_by_name(data[0])
      song = Song.new(data[1])
      artist.add_song(song)
    }
  end

end