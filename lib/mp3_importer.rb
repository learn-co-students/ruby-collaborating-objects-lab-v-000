require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    # spec passes in @path = "./spec/fixtures/mp3s"
    @path = path
  end

  def files
    # Dir.entries(@path)    -returns an array containing all filenames of given directory
    # Dir.foreach(@path){|x| ...}    -calls the block once for each entry in the given direcotry
    Dir.entries(@path).select {|file| file.include?(".mp3")}
    # binding.pry
  end

  def import
   files.each do |filename|
     Song.new_by_filename(filename)
   end
 end
end
