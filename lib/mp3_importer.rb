class MP3Importer
  attr_accessor :path, :file

  def initialize(path)
    @path = path
    @file = file
  end

  def files
    Dir.chdir(@path) {| path | Dir.glob("*.mp3")}
    # Dir.entries(path).each {|filename| @file_names << "#{filename}"}
  end

  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end
end
