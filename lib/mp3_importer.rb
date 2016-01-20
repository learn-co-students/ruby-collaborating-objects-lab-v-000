class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    self.path = path
    self.files = Dir["#{@path}/*.mp3"].collect { |f| f.sub("#{@path}/","") }
  end

  def import
    self.files.each { |file| Song.new_by_filename(file)}
  end

end
