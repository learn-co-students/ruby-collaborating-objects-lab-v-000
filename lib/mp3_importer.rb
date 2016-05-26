require 'pry'
class MP3Importer
  
  attr_accessor :path
  
  
  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir[@path+"/*.mp3"] #look up dir entries
    
    @files.collect! do |file_name|
      file_name.split("/").last  
    end
  end

  def import
    @files.each do |file|
      Song.new_by_filename(file)      
    end
  end


end
