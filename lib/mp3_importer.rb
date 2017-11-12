class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path =  path
  end

  def files
    Dir[self.path + "/*.mp3"].collect { |filepath| filepath.split("/").last }
  end

  def import
    self.files.each { |filename| song = Song.new_by_filename(filename) }
  end
end
