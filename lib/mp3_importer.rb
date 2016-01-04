class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    self.path = path
    files
  end

  def files
    Dir.entries(self.path).grep(/mp3/)
  end

  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end

end