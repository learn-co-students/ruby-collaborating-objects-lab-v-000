class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.foreach(@path) do |file|
      if file.include?("mp3")
        files << file
      end
    end
    files
  end

  def import
  end

end
