require "pry"
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path)
    @files = @files.select{|file| file.include?(".mp3")}
    #binding.pry
  end

  def import
    #binding.pry
    files.each {|f|  Song.new_by_filename(f) }
  end
end
