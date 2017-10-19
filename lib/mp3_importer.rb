class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).delete_if { |filename| filename.start_with? "." }
  end

  def import
    files.each { |filename| Song.new_by_filename(filename) }
  end

end
