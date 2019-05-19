class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    self.path = path
    self.files = Dir.glob("#{path}/*.mp3").join(",").gsub("#{path}/", "").split(",")
  end

  def import
    self.files.each { |file| Song.new_by_filename(file) }
  end
end