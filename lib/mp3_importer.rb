require 'pry'

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    files
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if{|a| a.end_with?("mp3") == false}
    @files
  end

  def import
    @files.each{|file|
      Song.new_by_filename(file)
    }
  end

end