require 'pry'

class MP3Importer 
  attr_accessor :path
  
  def initialize(path) 
    @path = path
  end
  
  def files
    files = Dir.glob("#{path}/*.mp3")
    files.map do |x|
       x[21..-1]
     end
  end 

  def import 
    
  end 
end 