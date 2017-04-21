class MP3Importer
  attr_accessor :path

  def initialize(filename)
    @path = filename
  end

  def files
    Dir.entries(@path).select {|f| f.include?(".mp3")}
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end
end
