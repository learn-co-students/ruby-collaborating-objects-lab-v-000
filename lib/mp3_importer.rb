class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).delete_if do |x|
      x.start_with? "."
    end
  end

  def import
    files.each do |x|
      Song.new_by_filename(x)
    end
  end
end
