class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).grep(/mp3/)
  end

  def import
    files.each {|f| Song.new_by_filename(f)}
  end

end
