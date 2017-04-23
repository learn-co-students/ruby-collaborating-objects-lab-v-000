class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    #loads mp3 files in the path directory
    #Dir.glob path/*.mp3
    #gsub
  end

end
