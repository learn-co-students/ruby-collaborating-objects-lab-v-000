require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    file_name = Dir.glob("#{path}/*.mp3")
    file_name.collect{|file| (file.split("/"))[-1]}
  end

  def import
    files.each{|file| Song.new_by_filename(file)}
  end

end
