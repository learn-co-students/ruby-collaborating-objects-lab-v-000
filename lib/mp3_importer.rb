class MP3Importer
  attr_accessor :path
  @files = []

  def initialize(path_to_files)
    @path = path_to_files
    @files = self.populate_files
  end

  def populate_files
    if (@path.nil?)
      return nil
    end
    @files = Dir.entries(@path)
    @files.sort!
    @files.shift
    @files.shift
    return @files
  end

  def files
    @files
  end

  def import
    if (@files == [])
      return nil
    else
      @files.each do |filename|
        song = Song.new_by_filename(filename)
      end
    end
  end
end
