class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    # path.size
    path.include?(/^.+\.(mp3)$/)
  end

end
