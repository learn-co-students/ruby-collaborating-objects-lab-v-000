
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir::entries[".mp3"](path)
  end

  def import
  end
end #<----class end
