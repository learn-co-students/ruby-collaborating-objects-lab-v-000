require 'pry'

class MP3Importer
  
  attr_accessor :path, :fileNames
  
  def initialize(path)
    @path = path
    @fileNames = []
  end
  
  def files
   Dir.new(@path).reject {|s| s == '.'}
  end
    #binding.pry
  
  def import
  
    Song.new_by_fileneame(fileNames)
  end
  
end