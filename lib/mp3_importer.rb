class MP3Importer
  attr_accessor :path

  def initialize(path)
    self.path = path
  end

  def files
    Dir.entries(self.path).keep_if {|string| string.include?(".mp3")}
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
