require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{self.path}/*.mp3").map do |file|
      file.gsub("#{path}/", "")
    end
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
