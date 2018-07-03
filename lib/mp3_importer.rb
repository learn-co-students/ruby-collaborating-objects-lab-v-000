

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select {|file_name| file_name.include? "mp3"}
  end

  def import

  end

end
