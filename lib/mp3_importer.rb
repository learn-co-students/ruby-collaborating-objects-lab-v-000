require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path

  end

  def files
    files = []
    files = Dir.glob("#{self.path}/**/*.mp3")
    files.map{|file| file.split("/").last}
  end

  def import
    self.files.each{|w| Song.new_by_filename(w)}
  end
end
