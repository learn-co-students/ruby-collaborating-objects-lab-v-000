require 'pry'
class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    Dir.entries(@path).reject {|f| !f.include?(".mp3")}
   
   end 
  
  def import
    
    files.each {|filename| Song.new_by_filename(filename)}
  end 
  
end 