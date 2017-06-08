class  MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    @files = Dir.entries(@path).select {|file| file.include?(".mp3")}
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end
end
