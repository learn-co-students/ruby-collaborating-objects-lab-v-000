class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path  # Directory filepath
  end

  # Method gets a list of .mp3 files from a directory
  def files
    Dir.entries(path).keep_if {|file| file.match(/(mp3$)/)}
  end

  # Import .mp3 files to the Song class
  def import
    files.each {|file_name| Song.new_by_filename(file_name)}
  end

end
