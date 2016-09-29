class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir.entries(@path).select {|file| file.include?('.mp3')}
  end

  def import
    self.files.collect {|filename| Song.new_by_filename(filename)}
  end
end
