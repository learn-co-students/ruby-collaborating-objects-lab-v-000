class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    # path.size
    Dir["/path/to/search/.mp3"]
  end

end
