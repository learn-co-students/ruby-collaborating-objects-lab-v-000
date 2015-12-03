require "pry"

class MP3Importer

  attr_accessor :path

  def initialize(file)
    @path = file
  end

  def files 
    Dir.entries(path).select {|file| file.end_with?(".mp3")}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end  
end  