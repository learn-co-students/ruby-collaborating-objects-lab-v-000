require 'pry'
class MP3Importer

  attr_reader :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    array = Dir.entries(path)
    files = array.collect {|f|  f if f.split(".")[-1] == "mp3"}.compact
  end

  def import
    files.each {|f| Song.new_by_filename(f.split(".")[0])}
  end

end
