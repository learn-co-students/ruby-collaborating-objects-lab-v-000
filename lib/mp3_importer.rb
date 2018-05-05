require 'pry'
class MP3Importer
  
  attr_accessor :path 
  
  def initialize(test_music_path) 
    @path = test_music_path
  end 
  
  
  def files 
    
    all_files = Dir["#{@path}/*.mp3"]
    all_files.map do |file_name|
      if !File.directory? file_name
         file_name.split("/").pop
      end 
    end 
  end 
  
  def import
   self.files.each{ |file_name|
      Song.new_by_filename(file_name)
    }
    
   
  end 
  
  
end 
