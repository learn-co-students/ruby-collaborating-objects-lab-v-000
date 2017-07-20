
class MP3Importer

  attr_accessor :file, :path

  def initialize(path)
    @path = path
    @file = file
  end

  def files

    Dir.entries(path).select {|f| !File.directory? f}
  end

  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end

end
