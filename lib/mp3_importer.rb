class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    # path.size
    path.length
  end

end
