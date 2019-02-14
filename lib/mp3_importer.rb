class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
  end

  def import
    mp3i = MP3Importer.new(path)
    @path = path
  end
end #<----class end
