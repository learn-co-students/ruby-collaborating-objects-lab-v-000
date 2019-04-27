require 'pathname'

class MP3Importer
  attr_accessor :path, :file_name

  def initialize(path)
  @path = path
  end

  def files
    Dir.entries(path).select {|f| !File.directory? f}
    # File.basename(".mp3")
    # Pathname.glob(path)
    # Dir.entries(path).reject {|f| File.directory? f}
    # file = Dir.entries("mp3")
    # file = Pathname("mp3")
    # file = Dir.entries("./spec/fixtures/mp3s")
    # file = Pathname("./spec/fixtures/mp3s")
  end

  def import
     4.times {Song.new_by_filename(file_name)}
  end

end
