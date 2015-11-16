require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    Dir.entries(path).select {|filename| filename.end_with?(".mp3")}
  end

  def import
    files.each {|filename|Song.new_by_filename(filename)}
  end

end