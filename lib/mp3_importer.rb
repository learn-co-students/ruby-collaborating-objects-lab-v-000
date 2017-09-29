require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    #The Dir.glob lists the files in path, and the .collect...gsub returns an array with just the filenames, not the junk indicating the path.
    Dir.glob("#{path}/*.mp3").collect { |x| x.gsub(path + "/", "")}
  end

  def import
    files.each {|x| Song.new_by_filename(x)}
  end

end
