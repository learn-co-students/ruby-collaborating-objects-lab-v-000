class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    files = Dir[@path + "/*"]
    @files = files.collect do |file_path|
      file_path.gsub(@path + "/", "")
    end
    @files
  end

  def import
    self.files
    @files.collect do |file|
      Song.new_by_filename(file)
    end.uniq

  end
end
