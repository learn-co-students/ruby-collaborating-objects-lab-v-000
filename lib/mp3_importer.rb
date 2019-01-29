class MP3Importer
  attr_accessor :path

  def initialize
    @path = path
  end

  def files
    Dir.filenames('./spec/fixtures') {|file| file.split(" - ")}
  end

  def import(filenames)

  end
end
