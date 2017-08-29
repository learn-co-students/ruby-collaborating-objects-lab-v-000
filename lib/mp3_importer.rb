class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    # Dir.new(path)
  end

  def files
    Dir.new(@path).entries.select {|item| item.length > 2}
  end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end


end # End of Class
