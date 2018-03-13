class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(self.path).select{|song| song.end_with?(".mp3")}
  end

  def import
    self.files.collect do |filename|
      Song.new_by_filename(filename)
    end
  end

end