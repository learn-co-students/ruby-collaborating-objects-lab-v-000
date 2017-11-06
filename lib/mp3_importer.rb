class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path << "/*"
    @files = []
  end

  def files
    Dir[@path].select{ |f| File.file? f }.map{ |f| File.basename f }
  end

  def import
    self.files.each { |file| Song.new_by_filename(file) }
  end

end
