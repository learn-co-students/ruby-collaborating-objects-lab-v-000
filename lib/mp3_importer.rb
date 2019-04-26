class MP3Importer
  attr_accessor :path

  def initialize(path)
  @path = path
  end

  def files
    file = File.basename(path)
    file
    # file = Dir.entries("./spec/fixtures/mp3s")
    # file = Pathname("./spec/fixtures/mp3s")
  end

end

# rb_file_s_size - .mp3
