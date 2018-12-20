class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir[path + "/*"].map { |song| File.basename(song) }
  end

  def import
    files.map { |filename| Song.new_by_filename(filename) }
  end
end
