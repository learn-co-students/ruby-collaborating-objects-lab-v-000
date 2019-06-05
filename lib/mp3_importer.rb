require 'pry'

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def files
    array = Dir.glob("#{path}/*.mp3").collect{|file| file.split(path+"/")[1]}
  end

  def import
    files.each do |file| 
      Song.new_by_filename(file)
    end
  end
end