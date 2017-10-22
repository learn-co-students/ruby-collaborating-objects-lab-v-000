class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path)
    @files.uniq
    @files.delete(".")
    @files.delete("..")
    @files
  end

  def import
    self.files.each{|filename|
      song = Song.new_by_filename(filename)}
  end

end
