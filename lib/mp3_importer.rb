class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).delete_if{|i| i == "." || i == ".."}
  end

  def import
    files.each{|i| Song.new_by_filename(i)}
  end

end
