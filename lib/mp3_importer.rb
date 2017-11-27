class MP3Importer
  attr_accessor :path, :song

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).keep_if {|x| x.include? ".mp3"}
  end

  def import
    mp3importer = MP3Importer.new(path)
    songs = Song.new_by_filename(path)


  end

end
