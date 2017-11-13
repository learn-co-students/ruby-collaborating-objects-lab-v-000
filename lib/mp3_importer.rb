class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select do |dir_entry|
      dir_entry.end_with?(".mp3")
    end
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
