class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @path << Dir[MP3Importer.new('./spec/fixtures').import]
  end

  def import

  end

end
