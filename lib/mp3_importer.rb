require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{self.path}/*.mp3").collect {|file| file.split("/").last}
  end

  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end

end