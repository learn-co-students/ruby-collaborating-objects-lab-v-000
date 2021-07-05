class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").select{|f| File.file? f}.collect{|f| File.basename f}
  end

  def import
    self.files.each{|filename| Song.new_by_filename(filename)}
  end

end
