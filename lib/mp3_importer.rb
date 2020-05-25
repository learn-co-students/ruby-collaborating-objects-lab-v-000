require 'pry'

class MP3Importer
  
  attr_accessor :path, :fileNames
  
  def initialize(path)
    @path = path
    @fileNames = []
  end
  
  def files
   Dir.new(@path).reject {|s| s == '.' || s== ".."}
  end
  
  def import
    files.each do |fileName|
      Song.new_by_filename(fileName)
    end
  end
  
end