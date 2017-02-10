require 'pry'

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path).select {|f| /.*\.mp3$/ =~ f}
  end

  def import
    files.each {|file|
      Song.new_by_filename(file)}
  end

end
