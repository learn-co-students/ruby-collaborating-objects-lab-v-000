require "pry"
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path)
    @files.select{|file| file.include?(".mp3")}
    #binding.pry
  end
end
