require 'pry'

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end
  
  def files 
      @file_list ||= Dir.glob("#{path}/*.mp3").collect do |file_list|
      File.basename(file_list)
     end
  end 
end
    
  def import
   @file_list.each do |filename|
   Song.new_by_filename(filename)
    
  end 
  
  
end