class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    self.path = path
    self.files = Dir.glob("#{self.path}/*.mp3").collect { |f| f.sub("#{self.path}/","") }
  end

  def import
    self.files.each { |file| Song.new_by_filename(file)}
  end

end
