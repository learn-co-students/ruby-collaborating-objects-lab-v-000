class MP3Importer
  def initialize(path)
    @path = path
  end

  attr_accessor :path

  def files
    Dir.entries(@path).select{|f| !File.directory? f}
  end

  def import
    files.each {|file_name|
      Song.new_by_filename(file_name)
    }
  end
end
