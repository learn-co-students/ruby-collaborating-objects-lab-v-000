require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir[@path + "/*"].collect {|file| File.basename file}
  end

  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end

end
