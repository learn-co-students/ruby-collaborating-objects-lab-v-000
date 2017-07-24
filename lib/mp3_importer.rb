class MP3Importer

  def initialize(file_path)
    @path = file_path
  end

  def path
    @path
  end

  def files
    x = Dir.entries(path)
    x.delete(".")
    x.delete("..")
    x
  end

  def import
    files.each {
      |file| Song.new_by_filename(file)
    }
  end

end
