class MP3Importer

  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  def files
    Dir.entries(@path).select {|entry| entry != "." && entry != ".."}
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
