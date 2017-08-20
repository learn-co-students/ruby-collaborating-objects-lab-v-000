class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path) - [".", ".."]
  end

  def import
    self.files
    @files.each do |some_filename|
      Song.new_by_filename(some_filename)
    end
  end

end
