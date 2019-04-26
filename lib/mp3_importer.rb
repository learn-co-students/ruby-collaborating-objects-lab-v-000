class MP3Importer
  attr_accessor :path

  def initialize(path)
  @path = path
  end

  def files
    file = File.basename(path)
    file
  end

end
