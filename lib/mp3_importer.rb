class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob["#{path}/*.mp3"]
  end

  def import

  end

end
