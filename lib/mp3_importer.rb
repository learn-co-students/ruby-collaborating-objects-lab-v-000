class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    def size

    end
  end

  def import(filenames)
    Dir.filenames('./spec/fixtures') {|file| file.split(" - ")}
    song = file.new
  end
end
